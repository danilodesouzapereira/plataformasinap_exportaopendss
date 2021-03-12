object FormDiagChave: TFormDiagChave
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Limites para Diagn'#243'stico de Chave'
  ClientHeight = 330
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 137
    Top = 0
    Width = 6
    Height = 330
    ExplicitHeight = 338
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 137
    Height = 330
    Align = alLeft
    Caption = 'Selecionar Tipo de Chave:'
    TabOrder = 0
    object lbTipoChave: TListBox
      Left = 2
      Top = 15
      Width = 133
      Height = 313
      Align = alClient
      Constraints.MinWidth = 133
      ItemHeight = 13
      TabOrder = 0
      OnClick = lbTipoChaveClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 143
    Top = 0
    Width = 301
    Height = 330
    Align = alClient
    Caption = 'Limites dos par'#226'metros'
    TabOrder = 1
    object sgLimites: TStringGrid
      AlignWithMargins = True
      Left = 4
      Top = 44
      Width = 293
      Height = 282
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      ColCount = 3
      Constraints.MinHeight = 58
      Constraints.MinWidth = 293
      DefaultColWidth = 95
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 0
      OnSetEditText = sgLimitesSetEditText
      RowHeights = (
        24
        24)
    end
    object ToolBar1: TToolBar
      Left = 2
      Top = 15
      Width = 297
      Height = 27
      ButtonWidth = 99
      Caption = 'ToolBar1'
      EdgeBorders = [ebTop, ebBottom]
      Images = ImageList
      List = True
      ShowCaptions = True
      TabOrder = 1
      Wrapable = False
      object butConfirma: TToolButton
        Left = 0
        Top = 0
        Hint = 'Confirmar altera'#231#245'es'
        Action = ActionConfirma
        AutoSize = True
        Enabled = False
      end
      object butCancela: TToolButton
        Left = 78
        Top = 0
        Hint = 'Descartar altera'#231#245'es'
        Action = ActionCancela
        AutoSize = True
        Enabled = False
      end
      object ToolButton1: TToolButton
        Left = 151
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 159
        Top = 0
        Action = ActionDefault
        AutoSize = True
      end
    end
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 368
    Top = 280
    object ActionCancela: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar edi'#231#227'o da barra'
      ImageIndex = 1
      OnExecute = ActionCancelaExecute
    end
    object ActionConfirma: TAction
      Caption = 'Confirmar'
      Hint = 'Confirmar edi'#231#227'o da barra'
      ImageIndex = 0
      OnExecute = ActionConfirmaExecute
    end
    object ActionDefault: TAction
      Caption = 'Valores Padr'#227'o'
      ImageIndex = 2
      OnExecute = ActionDefaultExecute
    end
  end
  object ImageList: TImageList
    Left = 408
    Top = 280
    Bitmap = {
      494C010103008000940010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008400000084000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000031CE000031CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000840000008400000084000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      00000031CE000031CE000031CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000000000000084000000
      8400000084000000000000000000000000000000000000000000000000000031
      CE000031CE000031CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000008400000084000000
      84000000000000000000000000000000000000000000000000000031CE000031
      CE000031CE0000000000000000000031CE000031CE000031CE000031CE000031
      CE000031CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      00000000000000000000000000000000000000000000000000000031CE000031
      CE000000000000000000000000000031CE000031CE000031CE000031CE000031
      CE000031CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840000008400000000000000
      00000000000000000000000000000000000000000000000000000031CE000031
      CE0000000000000000000000000000000000000000000031CE000031CE000031
      CE000031CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      00000000000000000000000000000000000000000000000000000031CE000031
      CE00000000000000000000000000000000000031CE000031CE000031CE000031
      CE000031CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000008400000084000000
      84000000000000000000000000000000000000000000000000000031CE000031
      CE000000000000000000000000000031CE000031CE000031CE00000000000031
      CE000031CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000000000000084000000
      8400000084000000000000000000000000000000000000000000000000000031
      CE000031CE000031CE000031CE000031CE000031CE0000000000000000000031
      CE000031CE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      00000031CE000031CE000031CE000031CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FE7FFFFFFFFF0000FC3FE7F3F9FF0000F81FE3E3F1FF0000F19FF1C7E3FF0000
      E38FF88FC6070000E7CFFC1FCE070000FFC7FE3FCF870000FFE7FC1FCF070000
      FFE3F88FCE270000FFF3F1C7E0670000FFF3E3E3F0FF0000FFFFE7F3FFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end