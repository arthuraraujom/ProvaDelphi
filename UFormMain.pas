unit UFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    arefas1: TMenuItem;
    mMnItem1: TMenuItem;
    mMnItem2: TMenuItem;
    mMnItem3: TMenuItem;
    procedure mMnItem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ufTarefa1;

{$R *.dfm}

procedure TForm1.mMnItem1Click(Sender: TObject);
begin
  fTarefa1 := TfTarefa1.create(self);
  fTarefa1.Show;
end;

end.
