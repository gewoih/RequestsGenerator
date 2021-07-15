object NewRequestForm: TNewRequestForm
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1079#1072#1087#1088#1086#1089#1072
  ClientHeight = 510
  ClientWidth = 539
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
    Width = 539
    Height = 510
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
        Control = btSaveAndSend
        Row = 1
      end>
    RowCollection = <
      item
        Value = 92.000000000000000000
      end
      item
        Value = 8.000000000000000000
      end>
    TabOrder = 0
    DesignSize = (
      539
      510)
    object GridPanel2: TGridPanel
      Left = 93
      Top = 102
      Width = 352
      Height = 264
      Anchors = []
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
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
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end>
      TabOrder = 0
      DesignSize = (
        352
        264)
      object Label1: TLabel
        Left = 115
        Top = 91
        Width = 61
        Height = 16
        Anchors = [akRight]
        Caption = #1060#1057#1056#1040#1056' ID:'
        ExplicitLeft = 104
        ExplicitTop = 96
      end
      object cbFsrarID: TComboBox
        Left = 207
        Top = 87
        Width = 145
        Height = 24
        Anchors = [akRight]
        TabOrder = 0
        Items.Strings = (
          '010060693049'
          '020000559704'
          '020000783752')
      end
      object Label2: TLabel
        Left = 102
        Top = 25
        Width = 74
        Height = 16
        Anchors = [akRight]
        Caption = #1047#1072#1087#1088#1086#1089' XML:'
        ExplicitLeft = 54
        ExplicitTop = 32
      end
      object btEditXML: TButton
        Left = 207
        Top = 20
        Width = 145
        Height = 25
        Anchors = [akRight]
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 1
        OnClick = btEditXMLClick
      end
      object Label3: TLabel
        Left = 99
        Top = 157
        Width = 77
        Height = 16
        Anchors = [akRight]
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
        ExplicitLeft = 52
        ExplicitTop = 145
      end
      object edComment: TEdit
        Left = 207
        Top = 153
        Width = 145
        Height = 24
        Anchors = [akRight]
        TabOrder = 2
      end
    end
    object btSaveAndSend: TButton
      Left = 1
      Top = 468
      Width = 537
      Height = 41
      Align = alClient
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1086#1090#1087#1088#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = btSaveAndSendClick
    end
  end
end
