unit EditSpr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Spr, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxDBEdit, cxTextEdit, cxLabel;

type
  TEditSprFrm = class(TForm)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    mode:integer;
    form:TFrmSpr;
   // DS:TIBDataSet;
  end;

var
  EditSprFrm: TEditSprFrm;


implementation

{$R *.dfm}

uses MainForm;

procedure TEditSprFrm.cxButton1Click(Sender: TObject);
begin
EditSprFrm.cxDBTextEdit1.DataBinding.DataSource.DataSet.post;
main.IBTransaction1.CommitRetaining;
close;
end;

procedure TEditSprFrm.cxButton2Click(Sender: TObject);
begin
//form.cxGrid1DBTableView1.DataController.DataSource.DataSet.Post;

//main.IBTransaction1.RollbackRetaining;
///Application.ProcessMessages;
Close;
end;

procedure TEditSprFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
EditSprFrm.cxDBTextEdit1.DataBinding.DataSource.DataSet.Cancel;
end;

end.
