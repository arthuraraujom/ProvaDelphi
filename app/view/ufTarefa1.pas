unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, view.template.child;

type
  TfTarefa1 = class(TviewTemplateChild)
    memColunas: TMemo;
    memTabelas: TMemo;
    memCondicoes: TMemo;
    Button1: TButton;
    memSqlGerado: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function geraSql: string;
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

uses
  uspQuery;

{$R *.dfm}

procedure TfTarefa1.Button1Click(Sender: TObject);
begin
  memSqlGerado.Lines.Text := geraSql;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa1 := nil;
end;

function TfTarefa1.geraSql: string;
begin
  result  := '';

  var ispQuery := TspQuery.create(self);

  try
    ispQuery.spColunas.Assign(memColunas.Lines);
    ispQuery.spTabelas.Assign(memTabelas.Lines);
    ispQuery.spCondicoes.Assign(memCondicoes.Lines);

    ispQuery.GeraSQL;

    result  := ispQuery.sql;
  finally
    if ispQuery <> nil then
      freeandnil(ispQuery);
  end;
end;

end.
