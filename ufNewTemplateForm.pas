unit ufNewTemplateForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNewTemplateForm = class(TForm)
    GridPanel1: TGridPanel;
    btCreateTemplate: TButton;
    GridPanel2: TGridPanel;
    Label1: TLabel;
    edRequestName: TEdit;
    Label2: TLabel;
    edFsrarId: TEdit;
    Label3: TLabel;
    edRequestType: TEdit;
    Label4: TLabel;
    btOpenXML: TButton;
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    procedure btCreateTemplateClick(Sender: TObject);
    procedure btOpenXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewTemplateForm: TNewTemplateForm;

implementation

{$R *.dfm}

uses
uxSQL,
uxRequestTemplate;

procedure TNewTemplateForm.btCreateTemplateClick(Sender: TObject);
begin
	var x: integer;

	if (TryStrToInt(edFsrarId.Text, x) and TryStrToInt(edRequestType.Text, x)
    	and (edRequestName.Text <> '') and (Memo1.Text <> '')) then
    begin
        fcon.Execute('insert into RequestsGenerator..Templates values(' +
            QuotedStr(edRequestName.Text) + ',' +
            edFsrarId.Text + ',' +
            edRequestType.Text + ',' +
            QuotedStr(Memo1.Text) + ')');

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

end.
