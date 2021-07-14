unit ufMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VirtualTrees, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Menus;

type
  TMainForm = class(TForm)
    GridPanel1: TGridPanel;
    GridPanel2: TGridPanel;
    TemplatesTree: TVirtualStringTree;
    RequestsTree: TVirtualStringTree;
    TemplatesTreePopupMenu: TPopupMenu;
    RequestsTreePopupMenu: TPopupMenu;
    miCreateTemplate: TMenuItem;
    Memo1: TMemo;
    miCreateRequest: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure TemplatesTreeGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: string);
    procedure TemplatesTreeFocusChanged(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex);
    procedure RequestsTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure TemplatesTreeBeforeCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
    procedure RequestsTreeBeforeCellPaint(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
    procedure miCreateTemplateClick(Sender: TObject);
    procedure miCreateRequestClick(Sender: TObject);
  private
	{ Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses uxSQL, uxRequestTemplate, ufNewTemplateForm, ufNewRequestForm;

procedure TMainForm.FormCreate(Sender: TObject);
begin
	ConnectSQL(fcon);

    Templates := TRequestTemplate.Create;
end;

procedure TMainForm.miCreateRequestClick(Sender: TObject);
begin
    if Assigned(TemplatesTree.FocusedNode) then
    begin
        with TNewRequestForm.Create(nil) do
        try
        	ShowModal;
        finally
            Free;
        end;
    end;
end;

procedure TMainForm.miCreateTemplateClick(Sender: TObject);
begin
    with TNewTemplateForm.Create(nil) do
	try
    	ShowModal;
    finally
        Free;
    end;
end;

procedure TMainForm.RequestsTreeBeforeCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
begin
var
	R := CellRect;
    if Node.Index mod 2 = 0 then TargetCanvas.Brush.Color := $E0FFE0 else TargetCanvas.Brush.Color := $E0FFFF;
    if (Node=Sender.FocusedNode) or (Column=Sender.FocusedColumn) then TargetCanvas.Brush.Color := TargetCanvas.Brush.Color - $200020;
    if (Node=Sender.FocusedNode) and (Column=Sender.FocusedColumn) then TargetCanvas.Brush.Color := $FFFFFF;
    TargetCanvas.FillRect(R);
end;

procedure TMainForm.TemplatesTreeBeforeCellPaint(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  CellPaintMode: TVTCellPaintMode; CellRect: TRect; var ContentRect: TRect);
begin
var
	R := CellRect;
    if Node.Index mod 2 = 0 then TargetCanvas.Brush.Color := $E0FFE0 else TargetCanvas.Brush.Color := $E0FFFF;
    if (Node=Sender.FocusedNode) or (Column=Sender.FocusedColumn) then TargetCanvas.Brush.Color := TargetCanvas.Brush.Color - $200020;
    if (Node=Sender.FocusedNode) and (Column=Sender.FocusedColumn) then TargetCanvas.Brush.Color := $FFFFFF;
    TargetCanvas.FillRect(R);
end;

procedure TMainForm.RequestsTreeGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
begin
	case Column of
    	0: CellText := Templates.Items[TemplatesTree.FocusedNode.Index].RequestsHistory[Node.Index].id.ToString;
    	1: CellText := Templates.Items[TemplatesTree.FocusedNode.Index].RequestsHistory[Node.Index].templateId.ToString;
    	2: CellText := Templates.Items[TemplatesTree.FocusedNode.Index].RequestsHistory[Node.Index].date;
        3: CellText := Templates.Items[TemplatesTree.FocusedNode.Index].RequestsHistory[Node.Index].comment;
    end;
end;

procedure TMainForm.TemplatesTreeFocusChanged(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex);
begin
    Templates.Items[Node.Index].LoadRequests;
    Memo1.Text := Templates.Items[Node.Index].xmlText;
end;

procedure TMainForm.TemplatesTreeGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
begin
	case Column of
    	0: CellText := Templates.Items[Node.Index].id.ToString;
    	1: CellText := Templates.Items[Node.Index].name;
    	2: CellText := Templates.Items[Node.Index].fsrarId;
    end;
end;

end.
