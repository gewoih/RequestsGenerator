object NewTemplateForm: TNewTemplateForm
  Left = 0
  Top = 0
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1090#1080#1087#1072' '#1079#1072#1087#1088#1086#1089#1072
  ClientHeight = 448
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 448
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
        Value = 92.000000000000000000
      end
      item
        Value = 8.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    DesignSize = (
      377
      448)
    object btCreateTemplate: TButton
      Left = 0
      Top = 412
      Width = 377
      Height = 36
      Align = alClient
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = btCreateTemplateClick
    end
    object GridPanel2: TGridPanel
      Left = 0
      Top = 86
      Width = 313
      Height = 239
      Anchors = [akLeft]
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000010000
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
          Column = 1
          Control = edFsrarId
          Row = 1
        end
        item
          Column = 0
          Control = Label3
          Row = 2
        end
        item
          Column = 1
          Control = edRequestType
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
      DesignSize = (
        313
        239)
      object Label1: TLabel
        Left = 77
        Top = 22
        Width = 79
        Height = 16
        Anchors = [akRight]
        Caption = #1048#1084#1103' '#1079#1072#1087#1088#1086#1089#1072':'
        ExplicitLeft = 66
        ExplicitTop = 18
      end
      object edRequestName: TEdit
        Left = 176
        Top = 18
        Width = 137
        Height = 24
        Anchors = [akRight]
        TabOrder = 0
      end
      object Label2: TLabel
        Left = 95
        Top = 82
        Width = 61
        Height = 16
        Anchors = [akRight]
        Caption = #1060#1057#1056#1040#1056' ID:'
        ExplicitLeft = 84
        ExplicitTop = 68
      end
      object edFsrarId: TEdit
        Left = 176
        Top = 78
        Width = 137
        Height = 24
        Anchors = [akRight]
        TabOrder = 1
      end
      object Label3: TLabel
        Left = 78
        Top = 141
        Width = 78
        Height = 16
        Anchors = [akRight]
        Caption = #1058#1080#1087' '#1079#1072#1087#1088#1086#1089#1072':'
        ExplicitLeft = 67
        ExplicitTop = 118
      end
      object edRequestType: TEdit
        Left = 176
        Top = 137
        Width = 137
        Height = 24
        Anchors = [akRight]
        TabOrder = 2
      end
      object Label4: TLabel
        Left = 78
        Top = 201
        Width = 78
        Height = 16
        Anchors = [akRight]
        Caption = 'XML '#1096#1072#1073#1083#1086#1085':'
        ExplicitLeft = 69
        ExplicitTop = 168
      end
      object btOpenXML: TButton
        Left = 176
        Top = 196
        Width = 137
        Height = 25
        Anchors = [akRight]
        Caption = #1054#1073#1079#1086#1088
        TabOrder = 3
        OnClick = btOpenXMLClick
      end
    end
    object Memo1: TMemo
      Left = 8
      Top = 9
      Width = 121
      Height = 71
      Anchors = []
      TabOrder = 2
      Visible = False
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.xml'
    Filter = 'XML '#1092#1072#1081#1083#1099'|*.xml'
    Left = 176
    Top = 344
  end
end
