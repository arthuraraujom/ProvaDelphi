unit model.interfaces;

interface

uses
  Vcl.ComCtrls, commons.types;

type
  iModelThread = interface
    ['{D904C983-24FA-4FBA-ACE8-3779255DF0BD}']

    function executar(aTempo: integer; aPgBar: TProgressBar): iModelThread;
  end;

  iModelProjeto = interface
    ['{1518E6B2-F21B-4626-BC09-EB08B03A2137}']

    function getTotal(aDataSet: TCommonDataSet): Currency;
    function getTotalDivisoes(aDataSet: TCommonDataSet): Currency;
    function loadData(aDataSet: TCommonDataSet): iModelProjeto;
  end;

implementation

end.
