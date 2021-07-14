unit uxTemplate;

interface

uses
uxRequest;

type
    TTemplate = class
    public
        RequestsHistory:	array of TRequest;
        id:                 integer;
        fsrarId:			AnsiString;
        commandId:         	integer;
        name:               AnsiString;
        xmlText:           	AnsiString;

        constructor Create overload;
        constructor Create(id: integer; fsrarId: AnsiString; commandId: integer; name: AnsiString; xmlText: AnsiString) overload;
        procedure LoadRequests;
        procedure AddRequest(R: OleVariant);
    end;

implementation

uses ufMainForm, uxADO, uxSQL, SysUtils;

procedure TTemplate.AddRequest(R: OleVariant);
begin
    SetLength(Self.RequestsHistory, Length(Self.RequestsHistory)+1);
    Self.RequestsHistory[High(Self.RequestsHistory)] := TRequest.Create(AsInt(R, 'id'), AsInt(R, 'template_id'), AsInt(R, 'query_id'), AsStr(R, 'xml_text'), AsStr(R, 'comment'), AsStr(R, 'date'));
end;

procedure TTemplate.LoadRequests;
var
	R:	OleVariant;
    K:  integer;
begin
    try
        MainForm.RequestsTree.BeginUpdate;
        MainForm.RequestsTree.Clear;

        R := fcon.execute('select * from RequestsGenerator..Requests where template_id = ' + IntToStr(Self.id));

        K := 0;
        while not R.EOF do
        begin
            Self.AddRequest(R);

            MainForm.RequestsTree.AddChild(nil, pointer(K));

            R.MoveNext;
            Inc(K);
        end;
    finally
        MainForm.RequestsTree.EndUpdate;
        MainForm.RequestsTree.Invalidate;
    end;
end;

constructor TTemplate.Create;
begin
    Self.LoadRequests;
end;

constructor TTemplate.Create(id: integer; fsrarId: AnsiString; commandId: integer; name: AnsiString; xmlText: AnsiString);
begin
    Self.id := id;
    Self.fsrarId := fsrarId;
    Self.commandId := commandId;
    Self.name := name;
    Self.xmlText := xmlText;

    Self.LoadRequests;
end;

end.
