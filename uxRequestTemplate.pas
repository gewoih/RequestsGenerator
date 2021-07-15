unit uxRequestTemplate;

interface

uses
uxTemplate;

type
    TRequestTemplate = class
	public
        Items:   array of TTemplate;

        procedure LoadTemplates;
        procedure AddTemplate(R: OleVariant);
    end;

var
    Templates:  TRequestTemplate;

implementation

uses
ufMainForm,
uxSQL,
uxADO;

procedure TRequestTemplate.LoadTemplates;
var
	R:	OleVariant;
    K:	integer;
begin
	try
        MainForm.TemplatesTree.BeginUpdate;
        MainForm.TemplatesTree.Clear;
        MainForm.RequestsTree.Clear;
        MainForm.RepliesTree.Clear;
        SetLength(Self.Items, 0);

        R := fcon.execute('select * from RequestsGenerator..Templates');

        K := 0;
        while not R.EOF do
        begin
            Self.AddTemplate(R);

            MainForm.TemplatesTree.AddChild(nil, pointer(K));

            Inc(K);
            R.MoveNext;
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
