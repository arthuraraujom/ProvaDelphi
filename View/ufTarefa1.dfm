object fTarefa1: TfTarefa1
  Left = 0
  Top = 0
  Caption = 'Tarefa 01'
  ClientHeight = 369
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 13
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object Label2: TLabel
    Left = 200
    Top = 13
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object Label3: TLabel
    Left = 384
    Top = 13
    Width = 49
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object Label4: TLabel
    Left = 16
    Top = 261
    Width = 57
    Height = 13
    Caption = 'SQL Gerado'
  end
  object memColunas: TMemo
    Left = 16
    Top = 32
    Width = 169
    Height = 193
    TabOrder = 0
  end
  object memTabelas: TMemo
    Left = 200
    Top = 32
    Width = 169
    Height = 193
    TabOrder = 1
  end
  object memCondicoes: TMemo
    Left = 384
    Top = 32
    Width = 169
    Height = 193
    TabOrder = 2
  end
  object Button1: TButton
    Left = 568
    Top = 120
    Width = 113
    Height = 25
    Caption = 'GeraSQL'
    TabOrder = 3
    OnClick = Button1Click
  end
  object memSqlGerado: TMemo
    Left = 16
    Top = 280
    Width = 665
    Height = 82
    ReadOnly = True
    TabOrder = 4
  end
end
