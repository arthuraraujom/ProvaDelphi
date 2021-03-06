unit model.projeto;

interface

uses
  model.interfaces, commons.types, system.sysutils, dialogs;

type
  TModelProjeto = class(TInterfacedObject, iModelProjeto)
  private
    { private declarations }
  public
    { public declarations }

    class function new: iModelProjeto;

    function getTotal(aDataSet: TCommonDataSet): Currency;
    function getTotalDivisoes(aDataSet: TCommonDataSet): Currency;

    function loadData(aDataSet: TCommonDataSet): iModelProjeto;
  end;

implementation

{ TModelProjeto }

function TModelProjeto.getTotal(aDataSet: TCommonDataSet): Currency;
begin
  result  := 0;

  try
    try
      aDataSet.DisableControls;

      aDataSet.first;
      while not aDataSet.Eof do
      begin
        result  := result + aDataSet.fieldbyname('valor').ascurrency;
        aDataSet.next;
      end;
    except on
      e: exception do
        showmessage('N?o foi poss?vel somar.'+#13+' Erro: '+e.message);
    end;
  finally
    aDataSet.EnableControls;
  end;
end;

function TModelProjeto.getTotalDivisoes(aDataSet: TCommonDataSet): Currency;
begin
  result  := 0;

  var iCurrResult := 0.0;
  var iCurrValorAnterior := 0.0;

  try
    try
      aDataSet.DisableControls;

      aDataSet.first;
      while not aDataSet.Eof do
      begin
        if aDataSet.bof then
          iCurrValorAnterior := aDataSet.FieldByName('Valor').AsCurrency
        else
        begin
          iCurrResult := iCurrResult + (aDataSet.FieldByName('Valor').AsCurrency / iCurrValorAnterior);
          iCurrValorAnterior := aDataSet.FieldByName('Valor').AsCurrency;
        end;

        aDataSet.next;
      end;

      result  := iCurrResult;
    except on
      e: exception do
        showmessage('N?o foi poss?vel realizar as divis?es.'+#13+' Erro: '+e.message);
    end;
  finally
    aDataSet.EnableControls;
  end;
end;

function TModelProjeto.loadData(aDataSet: TCommonDataSet): iModelProjeto;

  procedure createDataSet(aDataSet: TCommonClientDataSet);
  begin
    try
      aDataSet.Close;
      aDataSet.FieldDefs.Clear;

      var iField := aDataSet.FieldDefS.AddFieldDef;
      iField.DataType := TCommonFieldType.ftInteger;
      iField.Name := 'IdProjeto';

      iField := aDataSet.FieldDefS.AddFieldDef;
      iField.DataType := TCommonFieldType.ftString;
      iField.Name := 'NomeProjeto';

      iField := aDataSet.FieldDefS.AddFieldDef;
      iField.DataType := TCommonFieldType.ftCurrency;
      iField.Name := 'Valor';

      aDataSet.CreateDataSet;
    except
      raise;
    end;
  end;

begin
  try
    var iClientDataSet := TCommonClientDataSet(aDataSet);

    createDataSet(iClientDataSet);

    var iIntId := 0;

    while iIntId <= 9 do
    begin
      inc(iIntId);

      iClientDataSet.Append;
      iClientDataSet.FieldByName('IdProjeto').AsInteger := iIntId;
      iClientDataSet.FieldByName('NomeProjeto').AsString := 'Projeto ' + iIntId.ToString;
      iClientDataSet.FieldByName('Valor').AsCurrency := iIntId*10;
      iClientDataSet.Post;
    end;
  except on
    e: exception do
      showmessage('N?o foi poss?vel carregar.'+#13+' Erro: '+e.message);
  end;
end;

class function TModelProjeto.new: iModelProjeto;
begin
  result  := TModelProjeto.Create;
end;

end.
