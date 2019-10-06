unit EditFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer,
  cxEdit, cxLabel, cxTextEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,Spr,
  cxDBEdit;

type
  TEditForm = class(TAllMdiForm)
    Panel1: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mode:integer;
    form:TFrmSpr;
  end;

var
  EditForm: TEditForm;

implementation

{$R *.dfm}

uses MainForm;

procedure TEditForm.cxButton1Click(Sender: TObject);
begin
  inherited;
  if mode=1 then
  begin
  form.cxGrid1DBTableView1.DataController.DataSource.DataSet.Append;
  form.cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('name').AsString:=cxTextEdit1.Text;
  form.cxGrid1DBTableView1.DataController.DataSource.DataSet.Post;

  end;
  if mode=2 then
  begin
  form.cxGrid1DBTableView1.DataController.DataSource.DataSet.Edit;
  form.cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('name').AsString:=cxTextEdit1.Text;
  form.cxGrid1DBTableView1.DataController.DataSource.DataSet.Post;

  end;
end;

end.
