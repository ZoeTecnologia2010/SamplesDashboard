unit View.Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
    LayoutMenu: TLayout;
    Layout3: TLayout;
    LayoutToolBar: TLayout;
    LayoutPrincipal: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses View.Componente.MenuPrincipal, View.Componente.ToolBar, View.Clientes;

procedure TForm1.FormCreate(Sender: TObject);
begin
  LayoutMenu.AddObject(
    TComponenteMenuPrincipal.Create(Self).Layout1
  );

  LayoutToolBar.AddObject(
    TComponenteToolBar.Create(Self).Layout1
  );

  LayoutPrincipal.AddObject(
    TViewClientes.Create(Self).Layout1
  );
end;

end.
