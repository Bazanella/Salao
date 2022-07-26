unit Salao.View.Clientes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Salao.View.Padrao, System.Actions, FMX.ActnList, FMX.Controls.Presentation,
  FMX.Layouts, FMX.Edit, FMX.SearchBox, FMX.ListBox, FMX.TabControl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MongoDBDataSet;

type
  TfrmClientes = class(TfrmCadastroPadrao)
    ListBoxItem2: TListBoxItem;
    Label3: TLabel;
    ListBoxItem3: TListBoxItem;
    Label2: TLabel;
    ListBoxItem4: TListBoxItem;
    Label4: TLabel;
    ListBoxItem5: TListBoxItem;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fnc_montarGrid; override;
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.fmx}

uses Salao.Controller.Utils;


procedure TfrmClientes.fnc_montarGrid;
begin
  TUtilsView.fnc_montarGrid(ListBox1, dsMongo, 'Codigo', 'Nome');
  inherited;
end;


procedure TfrmClientes.FormCreate(Sender: TObject);
begin
  Self.Banco := 'SALAO';
  Self.Collection := 'CLIENTES';
  inherited;
end;

end.
