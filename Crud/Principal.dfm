object TelaPrincipal: TTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'TelaPrincipal'
  ClientHeight = 504
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
    Height = 504
    ActivePage = pg_Produtos
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 505
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
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO'
          'DF')
      end
    end
    object pg_Produtos: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      object Label3: TLabel
        Left = 48
        Top = 248
        Width = 96
        Height = 15
        Caption = 'Nome do Produto'
      end
      object Label4: TLabel
        Left = 536
        Top = 248
        Width = 33
        Height = 15
        Caption = 'Pre'#231'o:'
      end
      object Label5: TLabel
        Left = 304
        Top = 248
        Width = 47
        Height = 15
        Caption = 'Unidade:'
      end
      object Label6: TLabel
        Left = 416
        Top = 248
        Width = 65
        Height = 15
        Caption = 'Quantidade:'
      end
      object Label7: TLabel
        Left = 48
        Top = 309
        Width = 54
        Height = 15
        Caption = 'Descri'#231#227'o:'
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 0
        Width = 679
        Height = 209
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object edit_NomeProd: TEdit
        Left = 48
        Top = 264
        Width = 201
        Height = 23
        TabOrder = 1
      end
      object cb_Un: TComboBox
        Left = 304
        Top = 269
        Width = 65
        Height = 23
        TabOrder = 2
      end
      object edit_Quant: TEdit
        Left = 416
        Top = 269
        Width = 65
        Height = 23
        TabOrder = 3
      end
      object edit_Preço: TEdit
        Left = 536
        Top = 264
        Width = 105
        Height = 23
        TabOrder = 4
      end
      object edit_Descricao: TEdit
        Left = 48
        Top = 330
        Width = 593
        Height = 73
        TabOrder = 5
      end
      object btn_SalvarProd: TButton
        Left = 494
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Salvar'
        TabOrder = 6
        OnClick = btn_SalvarProdClick
      end
      object btn_ApagarProd: TButton
        Left = 575
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Apagar'
        TabOrder = 7
        OnClick = btn_ApagarProdClick
      end
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
    Left = 108
    Top = 458
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * from cliente')
    Left = 172
    Top = 458
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 236
    Top = 458
  end
  object ADOQueryProdIns: TADOQuery
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS' +
      '-PC\SQLEXPRESS;Initial File Name="";Server SPN=""'
    Parameters = <>
    Left = 308
    Top = 442
  end
  object ADOQueryProdSel: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from produtos')
    Left = 364
    Top = 442
  end
  object DataSource2: TDataSource
    DataSet = ADOQueryProdSel
    Left = 416
    Top = 440
  end
end
