unit model.interfaces;

interface

uses
  Vcl.ComCtrls;

type
  iModelThread = interface
    ['{D904C983-24FA-4FBA-ACE8-3779255DF0BD}']

    function executar(aTempo: integer; aPgBar: TProgressBar): iModelThread;
  end;

implementation

end.
