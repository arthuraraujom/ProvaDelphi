program ProvaDelphiAppTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestTarefa3 in 'TestTarefa3.pas',
  controller.projeto in '..\controller\controller.projeto.pas',
  commons.types in '..\commons\commons.types.pas',
  controller.thread in '..\controller\controller.thread.pas',
  controller.interfaces in '..\controller\controller.interfaces.pas',
  model.thread in '..\model\model.thread.pas',
  model.projeto in '..\model\model.projeto.pas',
  model.interfaces in '..\model\model.interfaces.pas',
  TestTarefa2 in 'TestTarefa2.pas',
  TestTarefa1 in 'TestTarefa1.pas',
  uspQuery in '..\..\componentes\uspQuery.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

