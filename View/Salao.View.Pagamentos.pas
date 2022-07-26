unit Salao.View.Pagamentos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  Salao.View.Padrao, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MongoDBDataSet, FMX.TabControl, System.Actions, FMX.ActnList,
  FMX.Edit, FMX.SearchBox, FMX.ListBox, FMX.Layouts, FMX.Controls.Presentation;

type
  TfrmCadastroPagamentos = class(TfrmCadastroPadrao)
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    Label3: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure fnc_montarGrid; override;
  public
    { Public declarations }
  end;

var
  frmCadastroPagamentos: TfrmCadastroPagamentos;

implementation

uses
  Salao.Controller.Utils;

{$R *.fmx}

procedure TfrmCadastroPagamentos.fnc_montarGrid;
begin
   TUtilsView.fnc_montarGrid(ListBox1, dsMongo, 'Codigo', 'Descricao');
  inherited;
end;

procedure TfrmCadastroPagamentos.FormCreate(Sender: TObject);
begin
  Self.Banco := 'SALAO';
  Self.Collection := 'PAGAMENTOS';
  inherited;

end;

end.
