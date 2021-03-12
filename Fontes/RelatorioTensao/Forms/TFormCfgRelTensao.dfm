object FormCfgRelTensao: TFormCfgRelTensao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Configurar Relat'#243'rio de Tens'#227'o'
  ClientHeight = 346
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 298
    Height = 29
    ButtonWidth = 94
    Caption = 'ToolBar1'
    Images = ImageList1
    List = True
    ShowCaptions = True
    TabOrder = 0
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = ActionAlteraFaixas
      AutoSize = True
    end
    object ToolButton2: TToolButton
      Left = 98
      Top = 0
      Action = ActionFecha
      AutoSize = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 29
    Width = 298
    Height = 76
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object RGroupTensao: TRadioGroup
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 142
      Height = 70
      Align = alLeft
      Caption = 'Tens'#227'o Analisada'
      Items.Strings = (
        'Tens'#227'o de Fase'
        'Tens'#227'o de Linha')
      TabOrder = 0
    end
    object RGroupLimite: TRadioGroup
      AlignWithMargins = True
      Left = 151
      Top = 3
      Width = 144
      Height = 70
      Align = alClient
      Caption = 'Limite Analisado'
      Items.Strings = (
        'M'#237'nimo'
        'M'#225'ximo')
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 298
    Height = 241
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 292
      Height = 54
      Align = alTop
      Caption = 'Patamar'
      TabOrder = 0
      object CBoxPatamar: TComboBox
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 282
        Height = 21
        Align = alClient
        Style = csDropDownList
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 63
      Width = 292
      Height = 175
      Align = alClient
      Caption = 'Cores'
      TabOrder = 1
      object tabControlNivelV: TTabControl
        Left = 2
        Top = 15
        Width = 288
        Height = 158
        Align = alClient
        TabOrder = 0
        Tabs.Strings = (
          'AT'
          'MT'
          'BT')
        TabIndex = 1
        OnChange = tabControlNivelVChange
        OnChanging = tabControlNivelVChanging
        object pnlV1: TPanel
          Left = 4
          Top = 24
          Width = 280
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitTop = 128
          object lblV1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 126
            Height = 20
            Align = alLeft
            AutoSize = False
            Caption = 'abaixo de 0,92'
            Layout = tlCenter
            ExplicitLeft = -9
            ExplicitTop = -13
          end
          object PanCorV1: TPanel
            AlignWithMargins = True
            Left = 135
            Top = 3
            Width = 142
            Height = 20
            Align = alClient
            ParentBackground = False
            TabOrder = 0
            OnClick = ActionAlteraCorExecute
          end
        end
        object pnlV2: TPanel
          Left = 4
          Top = 50
          Width = 280
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitTop = 102
          object lblV2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 126
            Height = 20
            Align = alLeft
            AutoSize = False
            Caption = 'entre 0,92 e 0,97'
            Layout = tlCenter
          end
          object PanCorV2: TPanel
            AlignWithMargins = True
            Left = 135
            Top = 3
            Width = 142
            Height = 20
            Align = alClient
            ParentBackground = False
            TabOrder = 0
            OnClick = ActionAlteraCorExecute
          end
        end
        object pnlV3: TPanel
          Left = 4
          Top = 76
          Width = 280
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object lblV3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 126
            Height = 20
            Align = alLeft
            AutoSize = False
            Caption = 'entre 0,97 e 1,02'
            Layout = tlCenter
          end
          object PanCorV3: TPanel
            AlignWithMargins = True
            Left = 135
            Top = 3
            Width = 142
            Height = 20
            Align = alClient
            ParentBackground = False
            TabOrder = 0
            OnClick = ActionAlteraCorExecute
          end
        end
        object pnlV4: TPanel
          Left = 4
          Top = 102
          Width = 280
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitTop = 50
          object lblV4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 126
            Height = 20
            Align = alLeft
            AutoSize = False
            Caption = 'entre 1,02 e 1,08'
            Layout = tlCenter
          end
          object PanCorV4: TPanel
            AlignWithMargins = True
            Left = 135
            Top = 3
            Width = 142
            Height = 20
            Align = alClient
            ParentBackground = False
            TabOrder = 0
            OnClick = ActionAlteraCorExecute
          end
        end
        object pnlV5: TPanel
          Left = 4
          Top = 128
          Width = 280
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 4
          ExplicitTop = 24
          object lblV5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 126
            Height = 20
            Align = alLeft
            AutoSize = False
            Caption = 'acima de 1,08'
            Layout = tlCenter
            ExplicitLeft = -9
            ExplicitTop = 19
          end
          object PanCorV5: TPanel
            AlignWithMargins = True
            Left = 135
            Top = 3
            Width = 142
            Height = 20
            Align = alClient
            ParentBackground = False
            TabOrder = 0
            OnClick = ActionAlteraCorExecute
          end
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 256
    Top = 65528
    Bitmap = {
      494C010103000800200010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000840000008400000084000000840000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000000000000000000000000000000000000000000000000000
      00000000840000008400000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084000000840000008400000084000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      84000000840000008400000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000840000008400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000000000000084000000
      84000000840000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000840000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000008400000084000000
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000008400000084
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008400000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000084000000840000008400000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000000000000000000000000000000000000000000000000000000
      0000000000000000000000008400000084000000840000008400000084000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      0000008400000084000000000000000000000000000000000000000000000000
      0000000000000000840000008400000084000000000000008400000084000000
      84000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000000000000000000000000000000000000000000000
      0000000084000000840000008400000000000000000000000000000084000000
      84000000840000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000000000000000000000000000000000000000000000
      8400000084000000840000000000000000000000000000000000000000000000
      84000000840000008400000000000000000000000000C0C0C000C0C0C000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000C0C0C000C0C0C000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFF00000000
      FE7FFFFF00000000FC3FE7F300000000F81FE3E300000000F19FF1C700000000
      E38FF88F00000000E7CFFC1F00000000FFC7FE3F00000000FFE7FC1F00000000
      FFE3F88F00000000FFF3F1C700000000FFF3E3E300000000FFFFE7F300000000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 264
    Top = 88
    object ActionAlteraFaixas: TAction
      Caption = 'Alterar Faixas'
      ImageIndex = 2
      OnExecute = ActionAlteraFaixasExecute
    end
    object ActionFecha: TAction
      Caption = 'Fechar'
      ImageIndex = 0
      OnExecute = ActionFechaExecute
    end
    object ActionAlteraCor: TAction
      Caption = 'Altera cor'
      OnExecute = ActionAlteraCorExecute
    end
  end
  object ColorDialog: TColorDialog
    Left = 264
    Top = 46
  end
end
