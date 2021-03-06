unit controller.thread;

interface

uses
  controller.interfaces, model.thread, Vcl.ComCtrls;

type
  TControllerThread = class(TInterfacedObject, iControllerThread)
  private
    { private declarations }

  public
    { public declarations }
     class function new: iControllerThread;
     function executar(aTempo: integer; aPgBar: TProgressBar): iControllerThread;
  end;


implementation

{ TControllerThread }

function TControllerThread.executar(aTempo: integer; aPgBar: TProgressBar): iControllerThread;
begin
  result  := self;

  tmodelThread
    .new
    .executar(aTempo, aPgBar);
end;

class function TControllerThread.new: iControllerThread;
begin
 result := TControllerThread.Create;
end;

end.
