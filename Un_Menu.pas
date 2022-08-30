unit Un_Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMenu = class(TForm)
    btnCadCli: TButton;
    btnCadPro: TButton;
    btnPedidos: TButton;
    btnSair: TButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnPedidosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses
  view.pedidos;

{$R *.dfm}

procedure TFrmMenu.btnPedidosClick(Sender: TObject);
begin
   Application.CreateForm(TFrmPedidos, FrmPedidos);
   FrmPedidos.ShowModal;
   FreeAndNil(FrmPedidos);
end;

procedure TFrmMenu.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
