unit View.Componente.MenuPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TComponenteMenuPrincipal = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Label1: TLabel;
    Layout5: TLayout;
    Label2: TLabel;
    LayoutItens: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ComponenteMenuPrincipal: TComponenteMenuPrincipal;

implementation

{$R *.fmx}

uses View.Componente.ItemMenuPrincipal;

procedure TComponenteMenuPrincipal.FormCreate(Sender: TObject);
begin
  LayoutItens.AddObject(
    TComponenteItemMenuPrincipal.Create(Self).Layout1
  );

  LayoutItens.AddObject(
    TComponenteItemMenuPrincipal.Create(Self).Layout1
  );
end;

end.
