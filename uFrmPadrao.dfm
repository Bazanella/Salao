object FrmCadastroPadrao: TFrmCadastroPadrao
  Left = 0
  Top = 0
  Caption = 'FrmCadastroPadrao'
  ClientHeight = 242
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 41
    Align = alTop
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 201
    Width = 527
    Height = 41
    Align = alBottom
    TabOrder = 1
    object ButtonNovo: TButton
      Left = 120
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
    end
    object ButtonEditar: TButton
      Left = 201
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
    end
    object ButtonSalvar: TButton
      Left = 282
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
    end
    object ButtonExcluir: TButton
      Left = 363
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
    end
    object ButtonSair: TButton
      Left = 444
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
    end
  end
  object ActionList1: TActionList
    Left = 192
    Top = 72
    object acSalvar: TAction
      Caption = 'Salvar'
    end
    object acExcluir: TAction
      Caption = 'Excluir'
    end
    object acSair: TAction
      Caption = 'Sair'
    end
    object acNovo: TAction
      Caption = 'Novo'
    end
    object acEditar: TAction
      Caption = 'Editar'
    end
  end
end
