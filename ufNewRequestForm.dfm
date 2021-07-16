object NewRequestForm: TNewRequestForm
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1079#1072#1087#1088#1086#1089#1072
  ClientHeight = 196
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 196
    Align = alClient
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = GridPanel2
        Row = 0
      end
      item
        Column = 0
        Control = btSave
        Row = 1
      end>
    RowCollection = <
      item
        Value = 85.000000000000000000
      end
      item
        Value = 15.000000000000000000
      end>
    TabOrder = 0
    object GridPanel2: TGridPanel
      Left = 1
      Top = 1
      Width = 344
      Height = 165
      Align = alClient
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 30.000000000000000000
        end
        item
          Value = 70.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = Label1
          Row = 1
        end
        item
          Column = 1
          Control = cbFsrarID
          Row = 1
        end
        item
          Column = 0
          Control = Label2
          Row = 0
        end
        item
          Column = 1
          Control = btEditXML
          Row = 0
        end
        item
          Column = 0
          Control = Label3
          Row = 2
        end
        item
          Column = 1
          Control = edComment
          Row = 2
        end>
      RowCollection = <
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333340000
        end
        item
          Value = 33.333333333333310000
        end>
      TabOrder = 0
      DesignSize = (
        344
        165)
      object Label1: TLabel
        Left = 42
        Top = 74
        Width = 61
        Height = 16
        Anchors = [akRight]
        Caption = #1060#1057#1056#1040#1056' ID:'
        ExplicitLeft = 104
        ExplicitTop = 96
      end
      object cbFsrarID: TComboBox
        Left = 134
        Top = 70
        Width = 178
        Height = 24
        Style = csDropDownList
        Anchors = []
        ItemIndex = 0
        TabOrder = 0
        Text = '010060693049'
        Items.Strings = (
          '010060693049'
          '020000559704')
      end
      object Label2: TLabel
        Left = 29
        Top = 19
        Width = 74
        Height = 16
        Anchors = [akRight]
        Caption = #1047#1072#1087#1088#1086#1089' XML:'
        ExplicitLeft = 54
        ExplicitTop = 32
      end
      object btEditXML: TButton
        Left = 134
        Top = 15
        Width = 178
        Height = 25
        Anchors = []
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 1
        OnClick = btEditXMLClick
      end
      object Label3: TLabel
        Left = 26
        Top = 129
        Width = 77
        Height = 16
        Anchors = [akRight]
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
        ExplicitLeft = 52
        ExplicitTop = 145
      end
      object edComment: TEdit
        Left = 134
        Top = 125
        Width = 178
        Height = 24
        Anchors = []
        TabOrder = 2
      end
    end
    object btSave: TButton
      Left = 1
      Top = 166
      Width = 344
      Height = 29
      Align = alClient
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
      TabOrder = 1
      OnClick = btSaveClick
    end
  end
end
