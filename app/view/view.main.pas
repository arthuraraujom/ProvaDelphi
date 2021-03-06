unit view.main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TviewMain = class(TForm)
    MainMenu1: TMainMenu;
    arefas1: TMenuItem;
    mMnItem1: TMenuItem;
    mMnItem2: TMenuItem;
    mMnItem3: TMenuItem;
    procedure mMnItem1Click(Sender: TObject);
    procedure mMnItem2Click(Sender: TObject);
    procedure mMnItem3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  viewMain: TviewMain;

implementation

uses
   ufTarefa1, ufTarefa2, ufTarefa3;

{$R *.dfm}

procedure TviewMain.mMnItem1Click(Sender: TObject);
begin

  if fTarefa1 <> nil then
  begin
    fTarefa1.show;
    exit;
  end;

  fTarefa1 := TfTarefa1.create(self);
  fTarefa1.Show;
end;

procedure TviewMain.mMnItem2Click(Sender: TObject);
begin
  if fTarefa2 <> nil then
  begin
    fTarefa2.show;
    exit;
  end;

  fTarefa2 := TfTarefa2.create(self);
  fTarefa2.Show;
end;

procedure TviewMain.mMnItem3Click(Sender: TObject);
begin
  if fTarefa3 <> nil then
  begin
    fTarefa3.show;
    exit;
  end;

  fTarefa3 := TfTarefa3.create(self);
  fTarefa3.Show;
end;

end.
