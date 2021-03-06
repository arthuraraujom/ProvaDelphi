unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.template.child, commons.types,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TfTarefa3 = class(TviewTemplateChild)
    Label1: TLabel;
    gridItems: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    edtTotal: TEdit;
    edtTotalDivisoes: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    fDataSource: TDataSource;
    fClientDataSet: TCommonClientDataSet;
  public
    { Public declarations }
  end;

var
  fTarefa3: TfTarefa3;

implementation

uses
  controller.projeto;

{$R *.dfm}

procedure TfTarefa3.Button1Click(Sender: TObject);
begin
  inherited;

  var iCurrResult := TControllerProjeto
                      .new
                      .getTotalDivisoes(fClientDataSet);

  edtTotalDivisoes.Text  := CurrToStr(iCurrResult);
end;

procedure TfTarefa3.Button2Click(Sender: TObject);
begin
  inherited;

 var iCurrResult := TControllerProjeto
                      .new
                      .getTotal(fClientDataSet);

 edtTotal.Text  := formatfloat('#,##0.00', iCurrResult);
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fTarefa3 := nil;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  inherited;

  fDataSource := TDataSource.Create(nil);
  fClientDataSet := TCommonClientDataSet.Create(nil);

  TControllerProjeto
    .new
    .loadData(fClientDataSet);

  fDataSource.DataSet := fClientDataSet;

  gridItems.DataSource := fDataSource;
  gridItems.Columns[0].FieldName := 'IdProjeto';
  gridItems.Columns[1].FieldName := 'NomeProjeto';
  gridItems.Columns[2].FieldName := 'Valor';
end;

procedure TfTarefa3.FormDestroy(Sender: TObject);
begin
  inherited;

  if fClientDataSet <> nil then
  begin
    fClientDataSet.Close;
    freeandnil(fClientDataSet);
  end;

  if fDataSource <> nil then
    freeandnil(fDataSource);
end;

end.
