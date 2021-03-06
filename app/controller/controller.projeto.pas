unit controller.projeto;

interface

uses
  controller.interfaces, model.projeto, commons.types;

type
  TControllerProjeto = class(TInterfacedObject, iControllerProjeto)
  private
    { private declarations }

  public
    { public declarations }

    class function new: iControllerProjeto;

    function getTotal(aDataSet: TCommonDataSet): Currency;
    function getTotalDivisoes(aDataSet: TCommonDataSet): Currency;

    function loadData(aDataSet: TCommonDataSet): iControllerProjeto;
  end;

implementation

{ TControllerProjeto }

function TControllerProjeto.getTotal(aDataSet: TCommonDataSet): Currency;
begin
  result  :=  TModelProjeto
                .new
                .getTotal(aDataSet);
end;

function TControllerProjeto.getTotalDivisoes(aDataSet: TCommonDataSet): Currency;
begin

  result  :=  TModelProjeto
                .new
                .getTotalDivisoes(aDataSet);
end;

function TControllerProjeto.loadData(aDataSet: TCommonDataSet): iControllerProjeto;
begin
  result := self;

  TModelProjeto
    .new
    .loadData(aDataSet);
end;

class function TControllerProjeto.new: iControllerProjeto;
begin
  result  :=  TControllerProjeto.Create;
end;

end.
