object XMLEditorForm: TXMLEditorForm
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' XML '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 526
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 526
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Button1
        Row = 1
      end
      item
        Column = 0
        Control = SynEdit1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 92.000000000000000000
      end
      item
        Value = 8.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    object Button1: TButton
      Left = 1
      Top = 483
      Width = 715
      Height = 42
      Align = alClient
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object SynEdit1: TSynEdit
      Left = 1
      Top = 1
      Width = 715
      Height = 482
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      TabOrder = 1
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWindowText
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Courier New'
      Gutter.Font.Style = []
      Highlighter = SynXMLSyn1
      FontSmoothing = fsmNone
    end
  end
  object SynXMLSyn1: TSynXMLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    WantBracesParsed = False
    Left = 600
    Top = 16
  end
end
