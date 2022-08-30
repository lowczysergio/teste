object FrmMenu: TFrmMenu
  Left = 0
  Top = 0
  ClientHeight = 263
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnCadCli: TButton
    Left = 40
    Top = 32
    Width = 201
    Height = 25
    Caption = 'Cadastro de Clientes'
    Enabled = False
    TabOrder = 0
  end
  object btnCadPro: TButton
    Left = 40
    Top = 80
    Width = 201
    Height = 25
    Caption = 'Cadastro de Produtos'
    Enabled = False
    TabOrder = 1
  end
  object btnPedidos: TButton
    Left = 40
    Top = 128
    Width = 201
    Height = 25
    Caption = 'Lan'#231'amentos de Pedidos'
    TabOrder = 2
    OnClick = btnPedidosClick
  end
  object btnSair: TButton
    Left = 40
    Top = 184
    Width = 201
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
end
