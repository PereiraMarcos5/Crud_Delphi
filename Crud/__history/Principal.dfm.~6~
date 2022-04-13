object TelaPrincipal: TTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'TelaPrincipal'
  ClientHeight = 505
  ClientWidth = 693
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object conj_Pag: TPageControl
    Left = 0
    Top = 0
    Width = 693
    Height = 505
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
        Left = 559
        Top = 200
        Width = 32
        Height = 15
        Caption = 'Idade:'
      end
      object lb_Cpf: TLabel
        Left = 376
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
        Left = 261
        Top = 266
        Width = 52
        Height = 15
        Caption = 'Endere'#231'o:'
      end
      object lb_Numero: TLabel
        Left = 558
        Top = 266
        Width = 47
        Height = 15
        Caption = 'Numero:'
      end
      object Label1: TLabel
        Left = 56
        Top = 336
        Width = 40
        Height = 15
        Caption = 'Cidade:'
      end
      object Label2: TLabel
        Left = 346
        Top = 336
        Width = 38
        Height = 15
        Caption = 'Estado:'
      end
      object TPanel1: TPanel
        Left = 0
        Top = 0
        Width = 689
        Height = 185
        Caption = 'TPanel1'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = -4
          Top = 0
          Width = 689
          Height = 177
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object ed_NomeCliente: TEdit
        Left = 56
        Top = 221
        Width = 257
        Height = 23
        TabOrder = 1
      end
      object edit_Idade: TEdit
        Left = 559
        Top = 221
        Width = 47
        Height = 23
        TabOrder = 3
      end
      object medit_Cpf: TMaskEdit
        Left = 376
        Top = 221
        Width = 105
        Height = 23
        EditMask = '!999.999.999-99;0;'
        MaxLength = 14
        TabOrder = 2
        Text = ''
      end
      object medit_Cep: TMaskEdit
        Left = 56
        Top = 287
        Width = 144
        Height = 23
        EditMask = '!99999-999;0;'
        MaxLength = 9
        TabOrder = 4
        Text = ''
      end
      object edit_Endereco: TEdit
        Left = 261
        Top = 287
        Width = 265
        Height = 23
        TabOrder = 5
      end
      object edit_Numero: TEdit
        Left = 558
        Top = 287
        Width = 47
        Height = 23
        TabOrder = 6
        OnKeyPress = edit_NumeroKeyPress
      end
      object btn_Salvar: TButton
        Left = 444
        Top = 400
        Width = 85
        Height = 57
        Caption = 'Salvar'
        TabOrder = 9
        OnClick = btn_SalvarClick
      end
      object btn_Apagar: TButton
        Left = 535
        Top = 400
        Width = 93
        Height = 57
        Caption = 'Apagar'
        TabOrder = 10
        OnClick = btn_ApagarClick
      end
      object edit_Cidade: TEdit
        Left = 56
        Top = 357
        Width = 217
        Height = 23
        TabOrder = 7
      end
      object cb_Estado: TComboBox
        Left = 346
        Top = 357
        Width = 96
        Height = 23
        TabOrder = 8
      end
    end
    object pg_Produtos: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS' +
      '-PC\SQLEXPRESS;Initial File Name="";Server SPN=""'
    Provider = 'SQLNCLI11.1'
    Left = 44
    Top = 458
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 124
    Top = 458
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from cliente')
    Left = 204
    Top = 458
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 276
    Top = 458
  end
end
