unit Salao.Model.Conexao.DatasetMongo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MongoDBDataSet;

type
  TSalaoModelConexaoDataSetMongo = class(TDataModule)
    FDMongoDataSet: TFDMongoDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function DataSetMongo: TFDMongoDataSet;
    procedure SetCollectionName(Value: String);
    procedure SetDataBase(Value: String);
    { Public declarations }
  end;

var
  SalaoModelConexaoDataSetMongo: TSalaoModelConexaoDataSetMongo;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

uses
  Salao.Model.Dados;

procedure TSalaoModelConexaoDataSetMongo.DataModuleCreate(Sender: TObject);
begin

end;

{ TDataModule1 }

function TSalaoModelConexaoDataSetMongo.DataSetMongo: TFDMongoDataSet;
begin
  Result := FDMongoDataSet;
end;

procedure TSalaoModelConexaoDataSetMongo.SetCollectionName(Value: String);
begin
  FDMongoDataSet.CollectionName := Value;
end;

procedure TSalaoModelConexaoDataSetMongo.SetDataBase(Value: String);
begin
  FDMongoDataSet.DatabaseName := Value;
end;

end.
