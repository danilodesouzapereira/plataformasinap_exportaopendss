object FormLicenca: TFormLicenca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Sinap - Licen'#231'a de Uso'
  ClientHeight = 210
  ClientWidth = 299
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
  object RichEdit: TRichEdit
    Left = 0
    Top = 28
    Width = 299
    Height = 182
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
    ExplicitLeft = 93
    ExplicitTop = 35
    ExplicitWidth = 129
    ExplicitHeight = 76
  end
  object ToolBar: TToolBar
    Left = 0
    Top = 0
    Width = 299
    Height = 28
    ButtonWidth = 60
    EdgeBorders = [ebTop, ebBottom]
    Images = ImageList
    List = True
    ShowCaptions = True
    TabOrder = 1
    Wrapable = False
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 288
    object ButFecha: TToolButton
      Left = 0
      Top = 0
      AutoSize = True
      Caption = 'Fechar'
      ImageIndex = 0
      OnClick = ButFechaClick
    end
  end
  object ImageList: TImageList
    Left = 216
    Top = 32
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000840000008400000084000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000000000000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000008400000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840000008400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000008400000084000000
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000000000000084000000
      8400000084000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FE7FFFFF00000000FC3FE7F300000000F81FE3E300000000F19FF1C700000000
      E38FF88F00000000E7CFFC1F00000000FFC7FE3F00000000FFE7FC1F00000000
      FFE3F88F00000000FFF3F1C700000000FFF3E3E300000000FFFFE7F300000000
      FFFFFFFF00000000FFFFFFFF00000000}
  end
end