unit uxRequest;

interface

uses
uxReply;

type
    TRequest = class
    public
    	Replies:		array of TReply;
        id:				integer;
        templateId:		integer;
        queryId:		integer;
        xmlText:		AnsiString;
        comment:    	AnsiString;
        date:       	AnsiString;
        status:			AnsiString;

        constructor Create(id: integer; templateId: integer; queryId: integer; xmlText: AnsiString; comment: AnsiString; date: AnsiString; status: AnsiString);
        procedure LoadReplies;
        procedure AddReply(R: OleVariant);
        procedure DeleteFromBase;
        procedure UploadToBase;
        procedure SendToEgais;
    end;

implementation

uses
uxSQL,
ufMainForm,
uxADO,
SysUtils,
uxRequestTemplate;

constructor TRequest.Create(id: integer; templateId: integer; queryId: integer; xmlText: AnsiString; comment: AnsiString; date: AnsiString; status: AnsiString);
begin
    Self.id := id;
    Self.templateId := templateId;
    Self.queryId := queryId;
    Self.xmlText := xmlText;
    Self.comment := comment;
    Self.date := date;
    Self.status := status;
end;

procedure TRequest.LoadReplies;
var
	R:  OleVariant;
    K:	integer;
begin
    try
        MainForm.RepliesTree.BeginUpdate;
        MainForm.RepliesTree.Clear;
        SetLength(Self.Replies, 0);

        if Self.queryId <> 0 then
        begin
            R := fcon.Execute('select id, queryid, data, received from Egais..Reply where queryid = ' + IntToStr(Self.queryId));
            K := 0;
            while not R.EOF do
            begin
                Self.AddReply(R);

                MainForm.RepliesTree.AddChild(nil, pointer(K));

                Inc(K);
                R.MoveNext;
            end;
        end;
    finally
        MainForm.RepliesTree.EndUpdate;
        MainForm.RepliesTree.Invalidate;
    end;
end;

procedure TRequest.AddReply(R: OleVariant);
begin
	SetLength(Self.Replies, Length(Self.Replies)+1);
    Self.Replies[High(Self.Replies)] := TReply.Create(AsInt(R, 'id'), AsInt(R, 'queryid'), AsStr(R, 'data'), AsStr(R, 'received'));
end;

procedure TRequest.UploadToBase;
begin
    fcon.Execute('insert into RequestsGenerator..Requests values(' +
    	Self.templateId.ToString + ', ' +
        'null, ' +
        QuotedStr(Self.xmlText) + ', ' +
        QuotedStr(Self.comment) + ', ' +
        'convert(char(23), getdate(), 126), ' +
        QuotedStr(Self.status) + ') select @@IDENTITY');
end;

procedure TRequest.SendToEgais;
var
	R:  OleVariant;
begin
    R := fcon.Execute('execute Egais..QueryAdd ' +
    	QuotedStr(Templates.Items[MainForm.TemplatesTree.FocusedNode.Index].fsrarId) + ', ' +
        QuotedStr(Self.xmlText) + ', ' +
        Templates.Items[MainForm.TemplatesTree.FocusedNode.Index].commandId.ToString);

    Self.queryId := AsInt(R, 1);
    Self.status := 'ŒÚÔ‡‚ÎÂÌ ‚ ≈√¿»—';

    fcon.Execute('update RequestsGenerator..Requests set query_id = ' +
    	Self.queryId.ToString + ', ' +
        'status = ' +
        QuotedStr(Self.status) +
        ' where id = ' +
        Self.id.ToString);
end;

procedure TRequest.DeleteFromBase;
begin
    fcon.Execute('delete from RequestsGenerator..Requests where id = ' + Self.id.ToString);
end;

end.
