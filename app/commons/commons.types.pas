unit commons.types;

interface

uses
  Data.db, Datasnap.DBClient;

type
  TCommonDataSet       = Data.DB.TDataSet;
  TCommonClientDataSet = Datasnap.DBClient.TClientDataSet;
  TCommonFieldType     = Data.DB.TFieldType;

implementation

end.
