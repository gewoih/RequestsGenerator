unit uxRequestTemplate;

interface

uses
uxTemplate;

type
    TRequestTemplate = class
	public
        Items:   array of TTemplate;

        constructor Create;
        procedure LoadTemplates;
        procedure AddTemplate(R: OleVariant);
        procedure Clear;
    end;

var
    Templates:  TRequestTemplate;

implementation

uses
ufMainForm,
uxSQL,
uxADO;

constructor TRequestTemplate.Create;
begin
    Self.LoadTemplates;
end;

procedure TRequestTemplate.Clear;
begin
    SetLength(Items, 0);
end;

procedure TRequestTemplate.LoadTemplates;
var
	R:	OleVariant;
    K:	integer;
begin
	try
        MainForm.TemplatesTree.BeginUpdate;
        MainForm.TemplatesTree.Clear;
        Self.Clear;

        R := fcon.execute('select * from RequestsGenerator..Templates');

        K := 0;
        while not R.EOF do
        begin
            Self.AddTemplate(R);

            MainForm.TemplatesTree.AddChild(nil, pointer(K));

            R.MoveNext;
            Inc(K);
        end;
    finally
        MainForm.TemplatesTree.EndUpdate;
        MainForm.TemplatesTree.Invalidate;
    end;
end;

procedure TRequestTemplate.AddTemplate(R: OleVariant);
begin
	SetLength(Self.Items, Length(Self.Items)+1);
    Self.Items[High(Self.Items)] := TTemplate.Create(AsInt(R, 'id'), AsStr(R, 'fsrar_id'), AsInt(R, 'command_id'), AsStr(R, 'request_name'), AsStr(R, 'xml_text'));
end;

end.
