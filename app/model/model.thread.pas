unit model.thread;

interface

uses
  System.Classes, System.SysUtils, System.threading, Vcl.ComCtrls, model.interfaces;

type
  TModelThread = class(TInterfacedObject, iModelThread)
  private
    { private declarations }
  public
    { public declarations }

    class function new: iModelThread;
    function executar(aTempo: integer; aPgBar: TProgressBar): iModelThread;
  end;

implementation

{ TModelThread }

function TModelThread.executar(aTempo: integer; aPgBar: TProgressBar): iModelThread;
begin
  result  := self;

  if aTempo <= 0 then
    raise exception.Create('O tempo da repetição não pode ser 0');

  if aPgBar = nil then
    raise exception.Create('A barra de progresso não esta instanciada');

  ttask.run(procedure
            begin
              var iIntCount := 0;

              while iIntCount <= 100 do
              begin
               inc(iIntCount);

               tthread.Synchronize(tthread.CurrentThread, procedure
                                                          begin
                                                            aPgBar.Position :=  iIntCount;
                                                          end);

               sleep(aTempo);
              end;
            end);
end;

class function TModelThread.new: iModelThread;
begin
  result  := TModelThread.Create;
end;

end.
