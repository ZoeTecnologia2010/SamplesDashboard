program LayoutDashboard;

uses
  System.StartUpCopy,
  FMX.Forms,
  View.Principal in 'View\View.Principal.pas' {Form1},
  View.Componente.MenuPrincipal in 'View\Componentes\View.Componente.MenuPrincipal.pas' {ComponenteMenuPrincipal},
  View.Componente.ItemMenuPrincipal in 'View\Componentes\View.Componente.ItemMenuPrincipal.pas' {ComponenteItemMenuPrincipal},
  View.Componente.ToolBar in 'View\Componentes\View.Componente.ToolBar.pas' {ComponenteToolBar},
  View.Componente.Cliente.Detalhes in 'View\Componentes\View.Componente.Cliente.Detalhes.pas' {ComponenteClienteDetalhe},
  View.Componente.Cliente.Info in 'View\Componentes\View.Componente.Cliente.Info.pas' {ComponenteClienteInfo},
  View.Clientes in 'View\View.Clientes.pas' {ViewClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TComponenteItemMenuPrincipal, ComponenteItemMenuPrincipal);
  Application.CreateForm(TComponenteToolBar, ComponenteToolBar);
  Application.CreateForm(TComponenteClienteDetalhe, ComponenteClienteDetalhe);
  Application.CreateForm(TComponenteClienteInfo, ComponenteClienteInfo);
  Application.CreateForm(TViewClientes, ViewClientes);
  Application.Run;
end.
