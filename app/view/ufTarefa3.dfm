inherited fTarefa3: TfTarefa3
  Caption = 'Tarefa 3'
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 200
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 5
      Width = 625
      Height = 13
      Align = alTop
      Caption = 'Valores por projeto:'
      ExplicitWidth = 96
    end
    object gridItems: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 21
      Width = 625
      Height = 174
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Caption = 'IdProjeto'
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'NomeProjeto'
          Width = 430
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Valor'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 200
    Width = 635
    Height = 99
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      635
      99)
    object Label2: TLabel
      Left = 509
      Top = 4
      Width = 44
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total R$:'
    end
    object Label3: TLabel
      Left = 509
      Top = 47
      Width = 81
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Total divis'#244'es R$'
    end
    object Button1: TButton
      Left = 376
      Top = 59
      Width = 119
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Obter Total Divis'#245'es'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 420
      Top = 17
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Obter Total'
      TabOrder = 1
      OnClick = Button2Click
    end
    object edtTotal: TEdit
      Left = 509
      Top = 19
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      ReadOnly = True
      TabOrder = 2
      TextHint = '0'
    end
    object edtTotalDivisoes: TEdit
      Left = 509
      Top = 62
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      ReadOnly = True
      TabOrder = 3
      TextHint = '0'
    end
  end
end
