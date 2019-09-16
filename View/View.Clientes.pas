unit View.Clientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts;

type
  TViewClientes = class(TForm)
    Layout1: TLayout;
    LayoutInfo: TLayout;
    LayoutDetalhe: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.fmx}

uses View.Componente.Cliente.Info, View.Componente.Cliente.Detalhes;

procedure TViewClientes.FormCreate(Sender: TObject);
begin
  LayoutInfo.AddObject(
    TComponenteClienteInfo.Create(Self).Layout1
  );

  LayoutDetalhe.AddObject(
    TComponenteClienteDetalhe.Create(Self).Layout1
  );
end;

end.
