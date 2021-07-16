object NewTemplateForm: TNewTemplateForm
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1090#1080#1087#1072' '#1079#1072#1087#1088#1086#1089#1072
  ClientHeight = 259
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 259
    Align = alClient
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = btCreateTemplate
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 0
      end
      item
        Column = 0
        Control = Memo1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 85.000000000000000000
      end
      item
        Value = 15.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 377
    ExplicitHeight = 448
    DesignSize = (
      499
      259)
    object btCreateTemplate: TButton
      Left = 0
      Top = 220
      Width = 499
      Height = 39
      Align = alClient
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = btCreateTemplateClick
      ExplicitTop = 226
      ExplicitWidth = 598
    end
    object GridPanel2: TGridPanel
      Left = 0
      Top = 0
      Width = 499
      Height = 220
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
          Row = 0
        end
        item
          Column = 1
          Control = edRequestName
          Row = 0
        end
        item
          Column = 0
          Control = Label2
          Row = 1
        end
        item
          Column = 0
          Control = Label3
          Row = 2
        end
        item
          Column = 0
          Control = Label4
          Row = 3
        end
        item
          Column = 1
          Control = btOpenXML
          Row = 3
        end
        item
          Column = 1
          Control = cbFsrarID
          Row = 1
        end
        item
          Column = 1
          Control = cbTypes
          Row = 2
        end>
      RowCollection = <
        item
          Value = 25.017957255256530000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 24.982042744743470000
        end>
      TabOrder = 1
      ExplicitTop = -6
      DesignSize = (
        499
        220)
      object Label1: TLabel
        Left = 71
        Top = 19
        Width = 79
        Height = 16
        Anchors = [akRight]
        Caption = #1048#1084#1103' '#1079#1072#1087#1088#1086#1089#1072':'
        ExplicitLeft = 66
        ExplicitTop = 18
      end
      object edRequestName: TEdit
        Left = 172
        Top = 15
        Width = 305
        Height = 24
        Anchors = []
        TabOrder = 0
        ExplicitLeft = 171
      end
      object Label2: TLabel
        Left = 89
        Top = 74
        Width = 61
        Height = 16
        Anchors = [akRight]
        Caption = #1060#1057#1056#1040#1056' ID:'
        ExplicitLeft = 84
        ExplicitTop = 68
      end
      object Label3: TLabel
        Left = 72
        Top = 129
        Width = 78
        Height = 16
        Anchors = [akRight]
        Caption = #1058#1080#1087' '#1079#1072#1087#1088#1086#1089#1072':'
        ExplicitLeft = 0
        ExplicitTop = 113
      end
      object Label4: TLabel
        Left = 72
        Top = 184
        Width = 78
        Height = 16
        Anchors = [akRight]
        Caption = 'XML '#1096#1072#1073#1083#1086#1085':'
        ExplicitLeft = 69
        ExplicitTop = 168
      end
      object btOpenXML: TButton
        Left = 172
        Top = 180
        Width = 305
        Height = 25
        Anchors = []
        Caption = #1054#1073#1079#1086#1088
        TabOrder = 1
        OnClick = btOpenXMLClick
      end
      object cbFsrarID: TComboBox
        Left = 172
        Top = 70
        Width = 305
        Height = 24
        Style = csDropDownList
        Anchors = []
        ItemIndex = 0
        TabOrder = 2
        Text = '010060693049'
        Items.Strings = (
          '010060693049'
          '020000559704')
        ExplicitLeft = 171
      end
      object cbTypes: TComboBox
        Left = 172
        Top = 125
        Width = 305
        Height = 24
        Style = csDropDownList
        Anchors = []
        TabOrder = 3
        ExplicitLeft = 171
      end
    end
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 57
      Height = 48
      Anchors = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.xml'
    Filter = 'XML '#1092#1072#1081#1083#1099'|*.xml'
    Left = 16
    Top = 72
  end
end
