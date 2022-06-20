inherited fTarefa2: TfTarefa2
  Caption = 'Tarefa 2'
  OnClose = FormClose
  DesignSize = (
    635
    299)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 43
    Height = 13
    Caption = 'Thread 1'
  end
  object Label2: TLabel
    Left = 8
    Top = 61
    Width = 43
    Height = 13
    Caption = 'Thread 2'
  end
  object btnIniciar: TButton
    Left = 8
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = btnIniciarClick
  end
  object pgBar1: TProgressBar
    Left = 78
    Top = 25
    Width = 549
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object pgBar2: TProgressBar
    Left = 78
    Top = 77
    Width = 549
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object edtTempo1: TEdit
    Left = 7
    Top = 25
    Width = 65
    Height = 21
    NumbersOnly = True
    TabOrder = 3
    Text = '100'
    TextHint = 'Tempo(ms)'
    OnExit = edtTempo1Exit
  end
  object edtTempo2: TEdit
    Left = 7
    Top = 77
    Width = 65
    Height = 21
    NumbersOnly = True
    TabOrder = 4
    Text = '100'
    TextHint = 'Tempo(ms)'
    OnExit = edtTempo1Exit
  end
end
