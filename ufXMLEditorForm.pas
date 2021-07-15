unit ufXMLEditorForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, SynEdit,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, SynEditHighlighter, SynHighlighterXML;

type
  TXMLEditorForm = class(TForm)
    GridPanel1: TGridPanel;
    Button1: TButton;
    SynEdit1: TSynEdit;
    SynXMLSyn1: TSynXMLSyn;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XMLEditorForm: TXMLEditorForm;

implementation

{$R *.dfm}

procedure TXMLEditorForm.Button1Click(Sender: TObject);
begin
    ModalResult := mrOK;
end;

end.
