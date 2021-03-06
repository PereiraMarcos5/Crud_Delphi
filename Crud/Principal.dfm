object TelaPrincipal: TTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'TelaPrincipal'
  ClientHeight = 504
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object conj_Pag: TPageControl
    Left = 0
    Top = 0
    Width = 694
    Height = 504
    ActivePage = pg_Vendas
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 693
    object pg_Vendas: TTabSheet
      Caption = 'Vendas'
      object Label9: TLabel
        Left = 32
        Top = 24
        Width = 93
        Height = 15
        Caption = 'Nome do Cliente:'
      end
      object Label10: TLabel
        Left = 292
        Top = 24
        Width = 24
        Height = 15
        Caption = 'CPF:'
      end
      object Label8: TLabel
        Left = 32
        Top = 88
        Width = 46
        Height = 15
        Caption = 'Produto:'
      end
      object tdbCliente: TDBLookupComboBox
        Left = 32
        Top = 45
        Width = 225
        Height = 23
        KeyField = 'nome_Cliente'
        ListField = 'nome_Cliente'
        ListFieldIndex = 1
        ListSource = DataSource3
        TabOrder = 0
        OnExit = tdbClienteExit
      end
      object meditcpfcliente: TEdit
        Left = 292
        Top = 45
        Width = 105
        Height = 23
        Enabled = False
        TabOrder = 1
      end
      object DBGrid3: TDBGrid
        Left = 32
        Top = 101
        Width = 617
        Height = 206
        DataSource = DataSource2
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
      end
      object Button1: TButton
        Left = 496
        Top = 313
        Width = 153
        Height = 56
        Caption = 'Concluir Venda'
        TabOrder = 3
        OnClick = Button1Click
      end
      object edit_produtoVenda: TEdit
        Left = 32
        Top = 313
        Width = 121
        Height = 23
        Enabled = False
        TabOrder = 4
      end
    end
    object pg_Clientes: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 1
      object lb_NomeCliente: TLabel
        Left = 56
        Top = 216
        Width = 93
        Height = 15
        Caption = 'Nome do Cliente:'
      end
      object lb_IdadeCliente: TLabel
        Left = 558
        Top = 216
        Width = 32
        Height = 15
        Caption = 'Idade:'
      end
      object lb_Cpf: TLabel
        Left = 376
        Top = 216
        Width = 24
        Height = 15
        Caption = 'CPF:'
      end
      object lb_Cep: TLabel
        Left = 56
        Top = 278
        Width = 24
        Height = 15
        Caption = 'Cep:'
      end
      object lb_Endereco: TLabel
        Left = 261
        Top = 278
        Width = 52
        Height = 15
        Caption = 'Endere'#231'o:'
      end
      object lb_Numero: TLabel
        Left = 558
        Top = 278
        Width = 47
        Height = 15
        Caption = 'Numero:'
      end
      object Label1: TLabel
        Left = 56
        Top = 328
        Width = 40
        Height = 15
        Caption = 'Cidade:'
      end
      object Label2: TLabel
        Left = 322
        Top = 328
        Width = 38
        Height = 15
        Caption = 'Estado:'
      end
      object TPanel1: TPanel
        Left = 0
        Top = 0
        Width = 689
        Height = 194
        Caption = 'TPanel1'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = -4
          Top = 0
          Width = 689
          Height = 194
          DataSource = DataSource1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
        end
      end
      object ed_NomeCliente: TEdit
        Left = 56
        Top = 237
        Width = 257
        Height = 23
        TabOrder = 1
      end
      object edit_Idade: TEdit
        Left = 558
        Top = 237
        Width = 47
        Height = 23
        TabOrder = 3
      end
      object medit_Cpf: TMaskEdit
        Left = 376
        Top = 237
        Width = 103
        Height = 23
        EditMask = '!999.999.999.99;0;'
        MaxLength = 14
        TabOrder = 2
        Text = ''
      end
      object medit_Cep: TMaskEdit
        Left = 56
        Top = 299
        Width = 140
        Height = 23
        EditMask = '!99999-999;0;'
        MaxLength = 9
        TabOrder = 4
        Text = ''
      end
      object edit_Endereco: TEdit
        Left = 261
        Top = 299
        Width = 265
        Height = 23
        TabOrder = 5
      end
      object edit_Numero: TEdit
        Left = 558
        Top = 299
        Width = 47
        Height = 23
        TabOrder = 6
        OnKeyPress = edit_NumeroKeyPress
      end
      object btn_Salvar: TButton
        Left = 598
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Salvar'
        TabOrder = 9
        OnClick = btn_SalvarClick
      end
      object btn_Apagar: TButton
        Left = 436
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Apagar'
        TabOrder = 10
        OnClick = btn_ApagarClick
      end
      object edit_Cidade: TEdit
        Left = 56
        Top = 349
        Width = 217
        Height = 23
        TabOrder = 7
      end
      object cb_Estado: TComboBox
        Left = 322
        Top = 349
        Width = 96
        Height = 23
        AutoDropDown = True
        Style = csDropDownList
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
      object btn_Atualizar: TButton
        Left = 517
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Atualizar'
        TabOrder = 11
        OnClick = btn_AtualizarClick
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
        Left = -4
        Top = 0
        Width = 679
        Height = 193
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = DBGrid2CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_Prod'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_Prod'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'unidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preco'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Visible = True
          end
          item
            Expanded = False
            Visible = True
          end>
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
        Style = csDropDownList
        DragMode = dmAutomatic
        TabOrder = 2
        Items.Strings = (
          'UN'
          'KG')
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
        Top = 269
        Width = 105
        Height = 23
        TabOrder = 4
      end
      object edit_Descricao: TEdit
        Left = 48
        Top = 330
        Width = 593
        Height = 23
        TabOrder = 5
      end
      object btn_SalvarProd: TButton
        Left = 575
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Salvar'
        TabOrder = 6
        OnClick = btn_SalvarProdClick
      end
      object btn_ApagarProd: TButton
        Left = 413
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Apagar'
        TabOrder = 7
        OnClick = btn_ApagarProdClick
      end
      object btn_AtualizarProd: TButton
        Left = 494
        Top = 423
        Width = 75
        Height = 48
        Caption = 'Atualizar'
        TabOrder = 8
        OnClick = btn_AtualizarProdClick
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security I' +
      'nfo=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS' +
      '-PC\SQLEXPRESS;Initial File Name="";Server SPN=""'
    LoginPrompt = False
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
    Connection = ADOConnection1
    Parameters = <>
    Left = 116
    Top = 426
  end
  object ADOQueryProdSel: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * from produtos')
    Left = 172
    Top = 426
  end
  object DataSource2: TDataSource
    DataSet = ADOQueryProdSel
    Left = 232
    Top = 424
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 340
    Top = 410
  end
  object ADOQuery3: TADOQuery
    Active = True
    AutoCalcFields = False
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT (nome_Cliente) from cliente'
      '')
    Left = 388
    Top = 410
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM cliente WHERE nome_Cliente = tdbCliente.Text')
    Left = 436
    Top = 410
  end
end
