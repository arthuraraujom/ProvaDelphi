unit controller.interfaces;

interface

uses
  Vcl.ComCtrls, commons.types;

type
  iControllerThread = interface
    ['{818FB943-C150-4B05-9370-1C9DCB324C28}']

    function executar(aTempo: integer; aPgBar: TProgressBar): iControllerThread;
  end;

  iControllerProjeto  = interface
    ['{A2C56541-64DE-4119-BDEC-2CEF12FB5E67}']

    function getTotal(aDataSet: TCommonDataSet): Currency;
    function getTotalDivisoes(aDataSet: TCommonDataSet): Currency;
    function loadData(aDataSet: TCommonDataSet): iControllerProjeto;
  end;

implementation

end.
