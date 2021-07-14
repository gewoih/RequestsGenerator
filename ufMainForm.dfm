object MainForm: TMainForm
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'RequestsGenerator'
  ClientHeight = 637
  ClientWidth = 1099
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
    Width = 1099
    Height = 637
    Align = alClient
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 30.000000000000000000
      end
      item
        Value = 70.000000000000000000
      end>
    ControlCollection = <
      item
        Column = -1
        Row = 0
      end
      item
        Column = 1
        Control = GridPanel2
        Row = 0
      end
      item
        Column = 0
        Control = TemplatesTree
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    object GridPanel2: TGridPanel
      Left = 330
      Top = 0
      Width = 769
      Height = 637
      Align = alClient
      BevelOuter = bvNone
      Caption = 'GridPanel2'
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = -1
          Row = 0
        end
        item
          Column = 0
          Control = RequestsTree
          Row = 0
        end
        item
          Column = 0
          Control = Memo1
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 0
      object RequestsTree: TVirtualStringTree
        Left = 0
        Top = 0
        Width = 769
        Height = 318
        Align = alClient
        BevelOuter = bvNone
        Colors.BorderColor = 15987699
        Colors.DisabledColor = clGray
        Colors.DropMarkColor = 15385233
        Colors.DropTargetColor = 15385233
        Colors.DropTargetBorderColor = 15987699
        Colors.FocusedSelectionColor = 15385233
        Colors.FocusedSelectionBorderColor = clWhite
        Colors.GridLineColor = 15987699
        Colors.HeaderHotColor = clBlack
        Colors.HotColor = clBlack
        Colors.SelectionRectangleBlendColor = 15385233
        Colors.SelectionRectangleBorderColor = 15385233
        Colors.SelectionTextColor = clBlack
        Colors.TreeLineColor = 9471874
        Colors.UnfocusedColor = 9695224
        Colors.UnfocusedSelectionColor = 15385233
        Colors.UnfocusedSelectionBorderColor = 15385233
        Colors.HeaderColor = 9695224
        DefaultNodeHeight = 19
        Header.AutoSizeIndex = 3
        Header.DefaultHeight = 25
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -13
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Header.Height = 25
        Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
        PopupMenu = RequestsTreePopupMenu
        TabOrder = 0
        OnBeforeCellPaint = RequestsTreeBeforeCellPaint
        OnGetText = RequestsTreeGetText
        Touch.InteractiveGestures = [igPan, igPressAndTap]
        Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
        Columns = <
          item
            CaptionAlignment = taCenter
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable]
            Position = 0
            Width = 60
            Aggregate = False
            FilterMode = 0
            WideText = 'id'
          end
          item
            CaptionAlignment = taCenter
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable]
            Position = 1
            Width = 120
            Aggregate = False
            FilterMode = 0
            WideText = #1058#1080#1087' '#1079#1072#1087#1088#1086#1089#1072
          end
          item
            CaptionAlignment = taCenter
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable]
            Position = 2
            Width = 120
            Aggregate = False
            FilterMode = 0
            WideText = #1044#1072#1090#1072
          end
          item
            CaptionAlignment = taCenter
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable]
            Position = 3
            Width = 465
            Aggregate = False
            FilterMode = 0
            WideText = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
          end>
      end
      object Memo1: TMemo
        Left = 0
        Top = 318
        Width = 769
        Height = 319
        Align = alClient
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object TemplatesTree: TVirtualStringTree
      Left = 0
      Top = 0
      Width = 330
      Height = 637
      Align = alClient
      BevelOuter = bvNone
      Color = clBtnFace
      Colors.BorderColor = 15987699
      Colors.DisabledColor = clGray
      Colors.DropMarkColor = 15385233
      Colors.DropTargetColor = 15385233
      Colors.DropTargetBorderColor = 15987699
      Colors.FocusedSelectionColor = 15385233
      Colors.FocusedSelectionBorderColor = clWhite
      Colors.GridLineColor = 15987699
      Colors.HeaderHotColor = clBlack
      Colors.HotColor = clBlack
      Colors.SelectionRectangleBlendColor = 15385233
      Colors.SelectionRectangleBorderColor = 15385233
      Colors.SelectionTextColor = clBlack
      Colors.TreeLineColor = 9471874
      Colors.UnfocusedColor = 9695420
      Colors.UnfocusedSelectionColor = 15385233
      Colors.UnfocusedSelectionBorderColor = 15385233
      Colors.HeaderColor = 9695420
      DefaultNodeHeight = 25
      Header.AutoSizeIndex = 2
      Header.DefaultHeight = 25
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -13
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Header.Height = 25
      Header.Options = [hoAutoResize, hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
      PopupMenu = TemplatesTreePopupMenu
      TabOrder = 1
      OnBeforeCellPaint = TemplatesTreeBeforeCellPaint
      OnFocusChanged = TemplatesTreeFocusChanged
      OnGetText = TemplatesTreeGetText
      Touch.InteractiveGestures = [igPan, igPressAndTap]
      Touch.InteractiveGestureOptions = [igoPanSingleFingerHorizontal, igoPanSingleFingerVertical, igoPanInertia, igoPanGutter, igoParentPassthrough]
      Columns = <
        item
          CaptionAlignment = taCenter
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable]
          Position = 0
          Width = 60
          Aggregate = False
          FilterMode = 0
          WideText = 'id'
        end
        item
          CaptionAlignment = taCenter
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable]
          Position = 1
          Width = 150
          Aggregate = False
          FilterMode = 0
          WideText = #1048#1084#1103
        end
        item
          CaptionAlignment = taCenter
          Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coAllowFocus, coUseCaptionAlignment, coEditable]
          Position = 2
          Width = 116
          Aggregate = False
          FilterMode = 0
          WideText = #1060#1057#1056#1040#1056
        end>
    end
  end
  object TemplatesTreePopupMenu: TPopupMenu
    Left = 128
    Top = 48
    object miCreateTemplate: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1090#1080#1087' '#1079#1072#1087#1088#1086#1089#1072
      OnClick = miCreateTemplateClick
    end
  end
  object RequestsTreePopupMenu: TPopupMenu
    Left = 736
    Top = 40
    object miCreateRequest: TMenuItem
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1079#1072#1087#1088#1086#1089
      OnClick = miCreateRequestClick
    end
  end
end
