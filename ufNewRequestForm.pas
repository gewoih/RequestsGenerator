unit ufNewRequestForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TNewRequestForm = class(TForm)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    btSaveAndSend: TButton;
    Label1: TLabel;
    cbFsrarID: TComboBox;
    Label2: TLabel;
    btEditXML: TButton;
    Label3: TLabel;
    edComment: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btEditXMLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewRequestForm: TNewRequestForm;

implementation

{$R *.dfm}

uses
ufMainForm,
uxRequestTemplate,
ufXMLEditorForm;

procedure TNewRequestForm.btEditXMLClick(Sender: TObject);
begin
    with TXMLEditorForm.Create(nil) do
    begin
    	try
        	SynEdit1.Lines.Text := Templates.Items[MainForm.TemplatesTree.FocusedNode.Index].xmlText;
        	ShowModal;
        finally
        	Free;
        end;
    end;
end;

procedure TNewRequestForm.FormCreate(Sender: TObject);
var
	fsrarId:	AnsiString;
begin
	if Assigned(MainForm.TemplatesTree.FocusedNode) then
    begin
    	fsrarId := Templates.Items[MainForm.TemplatesTree.FocusedNode.Index].fsrarId;

        if fsrarId = '010060693049' then cbFsrarID.ItemIndex := 0
        else if fsrarId = '020000559704' then cbFsrarID.ItemIndex := 1
        else if fsrarId = '020000783752' then cbFsrarID.ItemIndex := 2;
    end;
end;


end.
