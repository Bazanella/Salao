unit Salao.View.Profissionais;

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
  TfrmCadastroProfissionais = class(TfrmCadastroPadrao)
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
  frmCadastroProfissionais: TfrmCadastroProfissionais;

implementation

uses
  Salao.Controller.Utils;

{$R *.fmx}

procedure TfrmCadastroProfissionais.FormCreate(Sender: TObject);
begin
  Self.Banco := 'SALAO';
  Self.Collection := 'PROFISSIONAIS';
  inherited;
end;

procedure TfrmCadastroProfissionais.fnc_montarGrid;
begin
  TUtilsView.fnc_montarGrid(ListBox1, dsMongo, 'Codigo', 'Nome');
  inherited;
end;

end.
