unit uFrmPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList;

type
  TFrmCadastroPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ActionList1: TActionList;
    acSalvar: TAction;
    acExcluir: TAction;
    acSair: TAction;
    acNovo: TAction;
    acEditar: TAction;
    ButtonNovo: TButton;
    ButtonEditar: TButton;
    ButtonSalvar: TButton;
    ButtonExcluir: TButton;
    ButtonSair: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPadrao: TFrmCadastroPadrao;

implementation

{$R *.dfm}

end.
