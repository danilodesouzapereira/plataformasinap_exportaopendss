object FormCfgLimV: TFormCfgLimV
  Left = 0
  Top = 0
  Caption = 'Limites dos N'#237'veis de Tens'#227'o'
  ClientHeight = 173
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 458
    Height = 24
    AutoSize = True
    ButtonWidth = 99
    EdgeBorders = [ebBottom]
    Images = ImageList
    List = True
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object butInclui: TToolButton
      Left = 0
      Top = 0
      Action = ActionConfirmar
      AutoSize = True
    end
    object butSair: TToolButton
      Left = 78
      Top = 0
      Action = ActionCancelar
      AutoSize = True
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
    end
  end
  object gboxLimBT: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 27
    Width = 452
    Height = 44
    Align = alTop
    Caption = 'Baixa Tens'#227'o'
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 61
      Height = 21
      Align = alLeft
      Caption = 'Tens'#227'o [kV]:'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object pnlBTinf: TPanel
      Left = 69
      Top = 15
      Width = 185
      Height = 27
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object cboxLimInfBT: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 102
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
      end
      object edtLimInfBT: TEdit
        AlignWithMargins = True
        Left = 111
        Top = 3
        Width = 71
        Height = 21
        Align = alClient
        TabOrder = 1
        Text = '0.0'
      end
    end
    object pnlBTsup: TPanel
      Left = 254
      Top = 15
      Width = 196
      Height = 27
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object cboxLimSupBT: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 102
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
        OnChange = cboxLimSupBTChange
      end
      object edtLimSupBT: TEdit
        AlignWithMargins = True
        Left = 111
        Top = 3
        Width = 82
        Height = 21
        Align = alClient
        TabOrder = 1
        Text = '1.0'
        OnChange = edtLimSupBTChange
      end
    end
  end
  object gboxLimAT: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 127
    Width = 452
    Height = 44
    Align = alTop
    Caption = 'Alta Tens'#227'o'
    TabOrder = 2
    object Label2: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 61
      Height = 21
      Align = alLeft
      Caption = 'Tens'#227'o [kV]:'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object Panel1: TPanel
      Left = 69
      Top = 15
      Width = 185
      Height = 27
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object cboxLimInfAT: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 102
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
        OnChange = cboxLimInfATChange
      end
      object edtLimInfAT: TEdit
        AlignWithMargins = True
        Left = 111
        Top = 3
        Width = 71
        Height = 21
        Align = alClient
        TabOrder = 1
        Text = '0.0'
        OnChange = edtLimInfATChange
      end
    end
    object Panel2: TPanel
      Left = 254
      Top = 15
      Width = 196
      Height = 27
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object cboxLimSupAT: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 102
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
      end
      object edtLimSupAT: TEdit
        AlignWithMargins = True
        Left = 111
        Top = 3
        Width = 82
        Height = 21
        Align = alClient
        TabOrder = 1
        Text = '1.0'
      end
    end
  end
  object gboxLimMT: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 77
    Width = 452
    Height = 44
    Align = alTop
    Caption = 'M'#233'dia Tens'#227'o'
    TabOrder = 3
    object Label3: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 61
      Height = 21
      Align = alLeft
      Caption = 'Tens'#227'o [kV]:'
      Layout = tlCenter
      ExplicitHeight = 13
    end
    object Panel3: TPanel
      Left = 69
      Top = 15
      Width = 185
      Height = 27
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object cboxLimInfMT: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 102
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
        OnChange = cboxLimInfMTChange
      end
      object edtLimInfMT: TEdit
        AlignWithMargins = True
        Left = 111
        Top = 3
        Width = 71
        Height = 21
        Align = alClient
        TabOrder = 1
        Text = '0.0'
        OnChange = edtLimInfMTChange
      end
    end
    object Panel4: TPanel
      Left = 254
      Top = 15
      Width = 196
      Height = 27
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object cboxLimSupMT: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 102
        Height = 21
        Align = alLeft
        Style = csDropDownList
        TabOrder = 0
        OnChange = cboxLimSupMTChange
      end
      object edtLimSupMT: TEdit
        AlignWithMargins = True
        Left = 111
        Top = 3
        Width = 82
        Height = 21
        Align = alClient
        TabOrder = 1
        Text = '1.0'
        OnChange = edtLimSupMTChange
      end
    end
  end
  object ActionList1: TActionList
    Images = ImageList
    Left = 376
    Top = 31
    object ActionConfirmar: TAction
      Caption = 'Confirmar'
      ImageIndex = 0
      OnExecute = ActionConfirmarExecute
    end
    object ActionCancelar: TAction
      Caption = 'Cancelar'
      ImageIndex = 1
      OnExecute = ActionCancelarExecute
    end
    object ActionDefault: TAction
      Caption = 'Valores Padr'#227'o'
      ImageIndex = 2
      OnExecute = ActionDefaultExecute
    end
  end
  object ImageList: TImageList
    Left = 336
    Top = 29
    Bitmap = {
      494C0101030005005C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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