object TelaPrincipal: TTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'TelaPrincipal'
  ClientHeight = 455
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object conj_Pag: TPageControl
    Left = 0
    Top = 0
    Width = 693
    Height = 455
    ActivePage = pg_Clientes
    Align = alClient
    TabOrder = 0
    object pg_Vendas: TTabSheet
      Caption = 'Vendas'
    end
    object pg_Clientes: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 1
      object lb_NomeCliente: TLabel
        Left = 56
        Top = 200
        Width = 93
        Height = 15
        Caption = 'Nome do Cliente:'
      end
      object lb_IdadeCliente: TLabel
        Left = 380
        Top = 332
        Width = 32
        Height = 15
        Caption = 'Idade:'
      end
      object lb_Cpf: TLabel
        Left = 380
        Top = 200
        Width = 24
        Height = 15
        Caption = 'CPF:'
      end
      object lb_Cep: TLabel
        Left = 56
        Top = 266
        Width = 24
        Height = 15
        Caption = 'Cep:'
      end
      object lb_Endereco: TLabel
        Left = 380
        Top = 266
        Width = 52
        Height = 15
        Caption = 'Endere'#231'o:'
      end
      object lb_Numero: TLabel
        Left = 56
        Top = 332
        Width = 47
        Height = 15
        Caption = 'Numero:'
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 689
        Height = 185
        Caption = 'Panel1'
        TabOrder = 0
      end
      object ed_NomeCliente: TEdit
        Left = 56
        Top = 221
        Width = 257
        Height = 23
        TabOrder = 1
      end
      object edit_Idade: TEdit
        Left = 380
        Top = 353
        Width = 47
        Height = 23
        TabOrder = 2
      end
      object medit_Cpf: TMaskEdit
        Left = 376
        Top = 221
        Width = 153
        Height = 23
        TabOrder = 3
        Text = ''
      end
      object medit_Cep: TMaskEdit
        Left = 56
        Top = 287
        Width = 145
        Height = 23
        TabOrder = 4
        Text = ''
      end
      object edit_Endereco: TEdit
        Left = 376
        Top = 287
        Width = 257
        Height = 23
        TabOrder = 5
      end
      object edit_Numero: TEdit
        Left = 56
        Top = 353
        Width = 32
        Height = 23
        TabOrder = 6
      end
      object Button1: TButton
        Left = 558
        Top = 369
        Width = 75
        Height = 40
        Caption = 'Salvar'
        TabOrder = 7
        OnClick = Button1Click
      end
    end
    object pg_Produtos: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS' +
      '-PC\SQLEXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI11.1'
    Left = 196
    Top = 386
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 276
    Top = 386
  end
end
