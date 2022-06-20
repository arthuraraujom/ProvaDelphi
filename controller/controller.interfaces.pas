unit controller.interfaces;

interface

uses
  Vcl.ComCtrls;

type
  iControllerThread = interface
    ['{818FB943-C150-4B05-9370-1C9DCB324C28}']

    function executar(aTempo: integer; aPgBar: TProgressBar): iControllerThread;
  end;

implementation

end.
