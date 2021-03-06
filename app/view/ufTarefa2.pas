unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, system.Threading, view.template.child;

type
  TfTarefa2 = class(TviewTemplateChild)
    btnIniciar: TButton;
    pgBar1: TProgressBar;
    pgBar2: TProgressBar;
    edtTempo1: TEdit;
    edtTempo2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIniciarClick(Sender: TObject);
    procedure edtTempo1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa2: TfTarefa2;

implementation

uses
  controller.thread;

{$R *.dfm}

procedure TfTarefa2.btnIniciarClick(Sender: TObject);
begin

  TControllerThread
    .new
    .executar(strtoint(edtTempo1.Text), pgBar1)
    .executar(strtoint(edtTempo2.Text), pgBar2);

end;

procedure TfTarefa2.edtTempo1Exit(Sender: TObject);
begin
  if trim(tedit(sender).Text) = '' then
    tedit(sender).Text := '100';
end;

procedure TfTarefa2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fTarefa2 := nil;
end;

end.
