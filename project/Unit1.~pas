unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, DB, ADODB, Menus, Buttons,
  jpeg;

type
  TLOG = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    log_register: TPanel;
    Sno_Tno: TLabel;
    password: TLabel;
    sno_tno_in: TEdit;
    password_in: TEdit;
    Log_In: TPanel;
    Register: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup2: TRadioGroup;
    student: TRadioButton;
    teacher: TRadioButton;
    procedure Log_inClick(Sender: TObject);
    procedure RegisterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LOG: TLOG;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TLOG.Log_inClick(Sender: TObject);
begin
  if (sno_tno_in.Text='') or (password_in.Text='') then
  begin
    Application.MessageBox('用户名或者密码不能为空，请重新输入','系统提示',mb_IconInformation+mb_OK);
  end
  else if student.Checked then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select Spswd from Student where Sno='+''''+trim(sno_tno_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
    if ADOQuery1.FieldValues['Spswd']=NULL then
    Application.MessageBox('用户不存在，请重新输入','系统提示',mb_IconInformation+mb_OK)
    else
    begin
    if trim(password_in.Text)<>trim(ADOQuery1.FieldValues['Spswd']) then
    Application.MessageBox('用户名或者密码不正确，请重新输入','系统提示',mb_IconInformation+mb_OK)
    else
    begin
    user_student.Show;
    user_student.ADOQuery1.SQL.Clear;
    user_student.ADOQuery1.SQL.Add('select Sdir from Student where Sno='+''''+trim(sno_tno_in.Text)+'''');
    if user_student.ADOQuery1.Active then
    user_student.ADOQuery1.Close;
    user_student.ADOQuery1.Open;
    user_student.Label18.Caption:=user_student.ADOQuery1.FieldValues['Sdir'];

    user_student.ADOQuery1.SQL.Clear;
    user_student.ADOQuery1.SQL.Add('select * from Project where Pno in(select Pno from SP where Sno='+''''+trim(sno_tno_in.Text)+''')');
    if user_student.ADOQuery1.Active then
    user_student.ADOQuery1.Close;
    user_student.ADOQuery1.Open;

    end;
    end;
  end
  else if teacher.Checked then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select Tpswd from Teacher where Tno='+''''+trim(sno_tno_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
    if ADOQuery1.FieldValues['Tpswd']=NULL then
    Application.MessageBox('用户不存在，请重新输入','系统提示',mb_IconInformation+mb_OK)
    else
    begin
    if trim(password_in.Text)<>trim(ADOQuery1.FieldValues['Tpswd']) then
    Application.MessageBox('用户名或者密码不正确，请重新输入','系统提示',mb_IconInformation+mb_OK)
    else
    begin
    user_teacher.Show;
    user_teacher.ADOQuery1.SQL.Clear;
    user_teacher.ADOQuery1.SQL.Add('select Tdir from Teacher where Tno='+''''+trim(sno_tno_in.Text)+'''');
    if user_teacher.ADOQuery1.Active then
    user_teacher.ADOQuery1.Close;
    user_teacher.ADOQuery1.Open;
    user_teacher.Label18.Caption:=user_teacher.ADOQuery1.FieldValues['Tdir'];

    user_teacher.ADOQuery1.SQL.Clear;
    user_teacher.ADOQuery1.SQL.Add('select * from Project where Pno in(select Pno from TP where Tno='+''''+trim(sno_tno_in.Text)+''')');
    if user_teacher.ADOQuery1.Active then
    user_teacher.ADOQuery1.Close;
    user_teacher.ADOQuery1.Open;
    end;
    end;
  end
end;

procedure TLOG.RegisterClick(Sender: TObject);
begin
user_register.Show;
end;

end.
