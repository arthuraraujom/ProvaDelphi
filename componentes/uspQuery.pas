unit uspQuery;

interface

uses
  System.Classes, System.SysUtils, FireDAC.Comp.Client, FireDAC.DApt;

type
  TspQuery = class(TFDQuery)
  private
    { private declarations }
    fspCondicoes: TStringList;
    fspColunas: TStringList;
    fspTabelas: TStringList;
    fsql: string;

    function validaPropriedades: boolean;
  public
    { public declarations }

    property spCondicoes: TStringList read fspCondicoes write fspCondicoes;
    property spColunas: TStringList read fspColunas write fspColunas;
    property spTabelas: TStringList read fspTabelas write fspTabelas;
    property sql: string read fsql write fsql;

    procedure GeraSQL;
    procedure LimpaPropriedades;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  end;

implementation

{ TspQuery }

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited;

  fspCondicoes  := TStringList.create;
  fspColunas    := TStringList.create;
  fspTabelas    := TStringList.create;

  LimpaPropriedades;
end;

destructor TspQuery.Destroy;
begin

  if fspCondicoes <> nil then
    freeandnil(fspCondicoes);

  if fspColunas <> nil then
    freeandnil(fspColunas);

  if fspTabelas <> nil then
    freeandnil(fspTabelas);

  inherited;
end;

procedure TspQuery.GeraSQL;
begin
  if not validaPropriedades then
    exit;

  fsql := '';

  { select }
  var iStrColunas := '';

  for var iIntCount := 0 to fspColunas.count -1 do
    if fspColunas[iIntCount].trim <> '' then
      iStrColunas := iStrColunas + fspColunas[iIntCount] + ',';
                    
  if iStrColunas.trim <> '' then     
  begin
    iStrColunas := copy(iStrColunas, 0, length(iStrColunas)-1);          
    fsql := fsql +  ' SELECT '+iStrColunas
  end
  else
    fsql := fsql +  ' SELECT *';

                               
  { from }
  fsql := fsql +  ' FROM '+ fspTabelas[0];


  { where }
  if fspCondicoes.count > 0 then
  begin
    var iStrCondicoes := '';

    for var iIntCount := 0 to fspCondicoes.count -1 do
      if fspCondicoes[iIntCount].trim <> '' then
        iStrCondicoes := iStrCondicoes + ' ' + fspCondicoes[iIntCount];
                    
    if iStrCondicoes.trim <> '' then             
      fsql := fsql +  ' WHERE '+ iStrCondicoes;
  end;        
end;

procedure TspQuery.LimpaPropriedades;
begin
  fspCondicoes.clear;
  fspColunas.clear;
  fspTabelas.clear;

  fsql := '';
end;

function TspQuery.validaPropriedades: boolean;
begin
  result  := false;

  try
    if fspTabelas.Count = 0 then
      raise exception.Create('Informe a tabela que deseja gerar o SQL.');

    if fspTabelas.Count > 1 then
      raise exception.Create('N?o ? possivel gerar o SQL com 2 ou mais tabelas.');

    if fspTabelas[0].Trim = '' then
      raise exception.Create('Informe a tabela que deseja gerar o SQL.');

    result  := true;
  except
    LimpaPropriedades;
    raise;
  end;
end;

end.
