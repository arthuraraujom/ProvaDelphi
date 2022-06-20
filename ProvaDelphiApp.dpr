program ProvaDelphiApp;

uses
  Vcl.Forms,
  UFormMain in 'UFormMain.pas' {Form1},
  ufTarefa1 in 'View\ufTarefa1.pas' {fTarefa1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfTarefa1, fTarefa1);
  Application.Run;
end.
