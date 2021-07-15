program RequestsGenerator;

uses
  Vcl.Forms,
  ufMainForm in 'ufMainForm.pas' {MainForm},
  uxTemplate in 'uxTemplate.pas',
  uxSQL in 'uxSQL.pas',
  uxRequest in 'uxRequest.pas',
  uxRequestTemplate in 'uxRequestTemplate.pas',
  ufNewTemplateForm in 'ufNewTemplateForm.pas' {NewTemplateForm},
  ufNewRequestForm in 'ufNewRequestForm.pas' {NewRequestForm},
  ufXMLEditorForm in 'ufXMLEditorForm.pas' {XMLEditorForm},
  uxReply in 'uxReply.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
