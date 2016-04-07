object Form1: TForm1
  Left = 53
  Top = 69
  Width = 1227
  Height = 634
  Caption = 'Jogo de Poker'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 593
    BevelWidth = 4
    TabOrder = 0
    object Label13: TLabel
      Left = 88
      Top = 40
      Width = 142
      Height = 37
      Caption = 'Jogador 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 48
      Top = 104
      Width = 34
      Height = 13
      Caption = 'Carta 1'
    end
    object Label15: TLabel
      Left = 48
      Top = 193
      Width = 34
      Height = 13
      Caption = 'Carta 2'
    end
    object Label16: TLabel
      Left = 48
      Top = 280
      Width = 34
      Height = 13
      Caption = 'Carta 3'
    end
    object Label17: TLabel
      Left = 48
      Top = 368
      Width = 34
      Height = 13
      Caption = 'Carta 4'
    end
    object Label18: TLabel
      Left = 48
      Top = 456
      Width = 34
      Height = 13
      Caption = 'Carta 5'
    end
    object CBCarta1Jogador1: TComboBox
      Left = 48
      Top = 120
      Width = 313
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object RGNaipeCarta1Jogador1: TRadioGroup
      Left = 48
      Top = 144
      Width = 313
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 1
    end
    object RGNaipeCarta2Jogador1: TRadioGroup
      Left = 48
      Top = 232
      Width = 313
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 2
    end
    object RGNaipeCarta3Jogador1: TRadioGroup
      Left = 48
      Top = 320
      Width = 313
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 3
    end
    object RGNaipeCarta4Jogador1: TRadioGroup
      Left = 48
      Top = 408
      Width = 313
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 4
    end
    object RGNaipeCarta5Jogador1: TRadioGroup
      Left = 48
      Top = 496
      Width = 313
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 5
    end
    object CBCarta2Jogador1: TComboBox
      Left = 48
      Top = 208
      Width = 313
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object CBCarta3Jogador1: TComboBox
      Left = 48
      Top = 296
      Width = 313
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object CBCarta4Jogador1: TComboBox
      Left = 48
      Top = 384
      Width = 313
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object CBCarta5Jogador1: TComboBox
      Left = 48
      Top = 472
      Width = 313
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 9
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
  end
  object Panel1: TPanel
    Left = 400
    Top = 0
    Width = 417
    Height = 593
    BevelWidth = 4
    TabOrder = 1
    object Label1: TLabel
      Left = 88
      Top = 40
      Width = 144
      Height = 37
      Caption = 'Jogador 2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 104
      Width = 34
      Height = 13
      Caption = 'Carta 1'
    end
    object Label3: TLabel
      Left = 48
      Top = 193
      Width = 34
      Height = 13
      Caption = 'Carta 2'
    end
    object Label4: TLabel
      Left = 48
      Top = 280
      Width = 34
      Height = 13
      Caption = 'Carta 3'
    end
    object Label5: TLabel
      Left = 48
      Top = 368
      Width = 34
      Height = 13
      Caption = 'Carta 4'
    end
    object Label6: TLabel
      Left = 48
      Top = 456
      Width = 34
      Height = 13
      Caption = 'Carta 5'
    end
    object CBCarta1Jogador2: TComboBox
      Left = 48
      Top = 120
      Width = 329
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object RGNaipeCarta1Jogador2: TRadioGroup
      Left = 48
      Top = 144
      Width = 329
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 1
    end
    object RGNaipeCarta2Jogador2: TRadioGroup
      Left = 48
      Top = 232
      Width = 329
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 2
    end
    object RGNaipeCarta3Jogador2: TRadioGroup
      Left = 48
      Top = 320
      Width = 329
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 3
    end
    object RGNaipeCarta4Jogador2: TRadioGroup
      Left = 48
      Top = 408
      Width = 329
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 4
    end
    object RGNaipeCarta5Jogador2: TRadioGroup
      Left = 48
      Top = 496
      Width = 329
      Height = 49
      Caption = 'Naipes'
      Columns = 4
      Items.Strings = (
        'Ouro (D)'
        'Copa (H)'
        'Espadas (S)'
        'Paus (C)')
      TabOrder = 5
    end
    object CBCarta2Jogador2: TComboBox
      Left = 48
      Top = 208
      Width = 329
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object CBCarta3Jogador2: TComboBox
      Left = 48
      Top = 296
      Width = 329
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object CBCarta4Jogador2: TComboBox
      Left = 48
      Top = 384
      Width = 329
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 8
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
    object CBCarta5Jogador2: TComboBox
      Left = 48
      Top = 472
      Width = 329
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 9
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10(T)'
        'Valete(J)'
        'Dama(Q)'
        'Rei(K)'
        #193's(A)')
    end
  end
  object Panel2: TPanel
    Left = 800
    Top = 0
    Width = 409
    Height = 593
    TabOrder = 2
    object Label7: TLabel
      Left = 120
      Top = 32
      Width = 143
      Height = 37
      Caption = 'Resultado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LbResultado: TLabel
      Left = 48
      Top = 112
      Width = 9
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LbJogo: TLabel
      Left = 48
      Top = 208
      Width = 9
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 40
      Top = 312
      Width = 321
      Height = 129
      Caption = 'Calcular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
