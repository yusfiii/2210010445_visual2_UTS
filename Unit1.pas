unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DataModule2.Zsatuan.SQL.Clear;
DataModule2.Zsatuan.SQL.Add('insert into satuan values(null,"'+Edit1.Text+'", "'+Edit2.Text+'")');
DataModule2.Zsatuan.ExecSQL ;

DataModule2.Zsatuan.SQL.Clear;
DataModule2.Zsatuan.SQL.Add('select * from satuan');
DataModule2.Zsatuan.Open;
ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
with DataModule2.Zsatuan do
begin
  SQL.Clear;
  SQL.Add('delete from satuan where id= "'+a+'"');
  ExecSQL ;

  SQL.Clear;
  SQL.Add('select * from satuan');
  Open
end;
ShowMessage('Data Berhasil DiDelete!');
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= DataModule2.Zsatuan.Fields[1].AsString;
Edit2.Text:= DataModule2.Zsatuan.Fields[2].AsString;
a:= DataModule2.Zsatuan.Fields[0].AsString;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Edit1.Text:=DataModule2.Zsatuan.Fields[1].AsString;
Edit2.Text:=DataModule2.Zsatuan.Fields[2].AsString;
a:=DataModule2.Zsatuan.Fields[0].AsString;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
with DataModule2.zsatuan do
begin
  SQL.Clear;
  SQL.Add('select * from satuan where nama like"%'+Edit3.Text+'%"');
  Open;
end;
end;


end.
