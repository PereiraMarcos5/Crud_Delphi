object TelaCadastro: TTelaCadastro
  Left = 0
  Top = 0
  Caption = 'TelaCadastro'
  ClientHeight = 209
  ClientWidth = 307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object lbNameUser: TLabel
    Left = 48
    Top = 16
    Width = 163
    Height = 15
    Caption = 'Cadastre seu nome de Usu'#225'rio:'
  end
  object lb_SenhaCadastro: TLabel
    Left = 48
    Top = 72
    Width = 104
    Height = 15
    Caption = 'Cadastre sua senha:'
  end
  object edit_NomeUser: TEdit
    Left = 48
    Top = 43
    Width = 209
    Height = 23
    TabOrder = 0
  end
  object edit_SenhaUser: TEdit
    Left = 48
    Top = 93
    Width = 209
    Height = 23
    TabOrder = 1
  end
  object btn_CancelarCadastro: TButton
    Left = 101
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
  end
  object btn_SalvarCadastro: TButton
    Left = 182
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btn_SalvarCadastroClick
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS' +
      '-PC\SQLEXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI11.1'
    Left = 8
    Top = 160
  end
  object QAux: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 48
    Top = 160
  end
end
