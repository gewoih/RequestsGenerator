unit ufNewTemplateForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
    TRequestType = record
        id:		integer;
        name:   AnsiString;
    end;

type
  TNewTemplateForm = class(TForm)
    GridPanel1: TGridPanel;
    btCreateTemplate: TButton;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    edRequestName: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btOpenXML: TButton;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    cbFsrarID: TComboBox;
    cbTypes: TComboBox;
    procedure btCreateTemplateClick(Sender: TObject);
    procedure btOpenXMLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    RequestTypes:   array of TRequestType;
  public
    { Public declarations }
  end;

var
  NewTemplateForm: TNewTemplateForm;

implementation

{$R *.dfm}

uses
uxSQL,
uxRequestTemplate,
ufMainForm,
uxTemplate,
uxADO;

procedure TNewTemplateForm.btCreateTemplateClick(Sender: TObject);
begin
	var x: integer;

	if ((cbFsrarID.Text <> '') and (cbTypes.Text <> '')
    	and (edRequestName.Text <> '') and (Memo1.Text <> '')) then
    begin
        var newTemplate := TTemplate.Create(0, cbFsrarId.Text, Self.RequestTypes[cbTypes.ItemIndex].id, edRequestName.Text, Memo1.Text);
        newTemplate.UploadTemplate;

        ShowMessage('Тип запроса ' + QuotedStr(edRequestName.Text) + ' успешно добавлен.');

        Templates.LoadTemplates;
        ModalResult := mrOK;
    end
    else
        ShowMessage('Введите корректные значения!');
end;

procedure TNewTemplateForm.btOpenXMLClick(Sender: TObject);
begin
    if (OpenDialog1.Execute) and (OpenDialog1.FileName <> '') then
        Memo1.Lines.LoadFromFile(OpenDialog1.FileName)
    else
        ShowMessage('Не удалось открыть файл.');
end;

procedure TNewTemplateForm.FormCreate(Sender: TObject);
var
	R:	OleVariant;
    K:  integer;
begin
    R := fcon.Execute('select id, name from Egais..Command order by name');
    K := 0;
    while not R.EOF do
    begin
        SetLength(Self.RequestTypes, K+1);

        Self.RequestTypes[K].id := AsInt(R, 'id');
        Self.RequestTypes[K].name := AsStr(R, 'name');

        cbTypes.Items.Add(Self.RequestTypes[K].name);

        Inc(K);
        R.MoveNext;
    end;
end;

end.
