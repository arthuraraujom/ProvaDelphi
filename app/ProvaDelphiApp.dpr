program ProvaDelphiApp;

uses
  Vcl.Forms,
  view.template.child in 'view\view.template.child.pas' {viewTemplateChild},
  ufTarefa1 in 'view\ufTarefa1.pas' {fTarefa1},
  ufTarefa2 in 'view\ufTarefa2.pas' {fTarefa2},
  controller.thread in 'Controller\controller.thread.pas',
  controller.interfaces in 'Controller\controller.interfaces.pas',
  model.thread in 'model\model.thread.pas',
  model.interfaces in 'model\model.interfaces.pas',
  view.main in 'view\view.main.pas' {viewMain},
  ufTarefa3 in 'view\ufTarefa3.pas' {fTarefa3},
  controller.projeto in 'controller\controller.projeto.pas',
  model.projeto in 'model\model.projeto.pas',
  commons.types in 'commons\commons.types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TviewMain, viewMain);
  Application.Run;
end.
