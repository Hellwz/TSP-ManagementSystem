unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, jpeg, DB, ADODB;

type
  Tuser_teacher = class(TForm)
    Panel8: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Image6: TImage;
    P_person_menu: TPanel;
    Label4: TLabel;
    Image2: TImage;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    P_student_menu: TPanel;
    Label7: TLabel;
    Image3: TImage;
    Panel6: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    P_task_q_menu: TPanel;
    Label8: TLabel;
    Image4: TImage;
    P_task_get_menu: TPanel;
    Label9: TLabel;
    Image5: TImage;
    P_interest: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    P_task: TPanel;
    L_task_undo: TLabel;
    DBGrid1: TDBGrid;
    P_MTPas: TPanel;
    s_oldpas: TLabel;
    s_newpas: TLabel;
    s_sure: TLabel;
    Label23: TLabel;
    s_oldpas_in: TEdit;
    s_newpas_in: TEdit;
    s_sure_in: TEdit;
    s_modify: TButton;
    s_m_info: TPanel;
    sname: TLabel;
    ssex: TLabel;
    sgrade: TLabel;
    sprize: TLabel;
    smajor: TLabel;
    special: TLabel;
    interest: TLabel;
    stele: TLabel;
    Label19: TLabel;
    sname_edit: TEdit;
    sgrade_edit: TEdit;
    smajor_edit: TEdit;
    sprize_edit: TEdit;
    special_edit: TEdit;
    interest_edit: TEdit;
    stele_edit: TEdit;
    RadioGroup1: TRadioGroup;
    smale: TRadioButton;
    sfemale: TRadioButton;
    Button1: TButton;
    S_query: TPanel;
    LS_query: TLabel;
    S_GoQuerry: TImage;
    S_term: TLabel;
    S_term_in: TEdit;
    DBGrid3: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    procedure P_person_menuClick(Sender: TObject);
    procedure P_student_menuClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure S_GoQuerryClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure s_modifyClick(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure P_task_get_menuClick(Sender: TObject);
    procedure P_task_q_menuClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user_teacher: Tuser_teacher;
  person_state:Integer;
  student_state:Integer;

  t_name:String;
  t_sex:String;
  t_age:String;
  t_dept:String;
  t_exep:String;
  t_dir:String;
  t_req:String;
  t_tele:String;

  pno:String;
  tptime:String;
  tpno:String;


implementation

uses Unit1;

{$R *.dfm}

procedure Tuser_teacher.P_person_menuClick(Sender: TObject);
begin
  if person_state=0 then
  begin
    person_state:=1;
    Panel1.Show;
    P_student_menu.Top:=P_student_menu.Top+50;
    Panel6.Top:=Panel6.Top+50;
    P_task_get_menu.Top:=P_task_get_menu.Top+50;
    P_task_q_menu.Top:=P_task_q_menu.Top+50;
  end
  else if(person_state=1) then
  begin
    person_state:=0;
    Panel1.Hide;
    P_student_menu.Top:=P_student_menu.Top-50;
    Panel6.Top:=Panel6.Top-50;
    P_task_get_menu.Top:=P_task_get_menu.Top-50;
    P_task_q_menu.Top:=P_task_q_menu.Top-50;
  end;
end;

procedure Tuser_teacher.P_student_menuClick(Sender: TObject);
begin
  if student_state=0 then
  begin
    student_state:=1;
    Panel6.Show;
    P_task_get_menu.Top:=P_task_get_menu.Top+75;
    P_task_q_menu.Top:=P_task_q_menu.Top+75;
  end
  else if (student_state=1) then
  begin
    student_state:=0;
    Panel6.Hide;
    P_task_get_menu.Top:=P_task_get_menu.Top-75;
    P_task_q_menu.Top:=P_task_q_menu.Top-75;
  end;
end;

procedure Tuser_teacher.Label6Click(Sender: TObject);
begin
  P_interest.Hide;
  s_m_info.Show;
  P_task.Hide;
  S_query.Hide;
  Panel2.Hide;
  P_MTPas.Hide;
end;

procedure Tuser_teacher.Label5Click(Sender: TObject);
begin
  P_interest.Hide;
  s_m_info.Hide;
  P_task.Hide;
  Panel2.Hide;
  S_query.Hide;
  P_MTPas.Show;
end;

procedure Tuser_teacher.Label10Click(Sender: TObject);
begin
  P_interest.Hide;
  s_m_info.Hide;
  P_task.Hide;
  P_MTPas.Hide;
  Panel2.Hide;
  S_query.Show;
  LS_query.Caption:='学生查询 > 学号查询';
  S_term.Caption:='学号：';
end;

procedure Tuser_teacher.Label11Click(Sender: TObject);
begin
  P_interest.Hide;
  s_m_info.Hide;
  P_task.Hide;
  P_MTPas.Hide;
  Panel2.Hide;
  S_query.Show;
  LS_query.Caption:='学生查询 > 姓名查询';
  S_term.Caption:='姓名：';
end;

procedure Tuser_teacher.Label12Click(Sender: TObject);
begin
  P_interest.Hide;
  s_m_info.Hide;
  P_task.Hide;
  P_MTPas.Hide;
  Panel2.Hide;
  S_query.Show;
  LS_query.Caption:='学生查询 > 院系查询';
  S_term.Caption:='院系：';
end;

procedure Tuser_teacher.S_GoQuerryClick(Sender: TObject);
begin
  if (S_term.Caption='学号：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Student where Sno='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
  else if(S_term.Caption='姓名：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Student where Sname='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
  else if(S_term.Caption='院系：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Student where Sdept='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
end;

procedure Tuser_teacher.Button1Click(Sender: TObject);
begin
  t_name:=sname_edit.Text;
  if smale.Checked then t_sex:='M';
  if sfemale.Checked then t_sex:='F';
  t_age:=sgrade_edit.Text;
  t_dept:=smajor_edit.Text;
  t_exep:=sprize_edit.Text;
  t_dir:=special_edit.Text;
  t_req:=interest_edit.Text;
  t_tele:=stele_edit.Text;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('update Teacher set Tname='+''''+t_name+''',Tsex='+''''+t_sex+''',Tage='+''''+t_age+''',Tdept='+''''+t_dept+''',Texp='+''''+t_exep+''',Tdir='+''''+t_dir+''',Treq='+''''+t_req+''',Tcon='+''''+t_tele+''' where Tno='+''''+trim(LOG.sno_tno_in.Text)+'''');
  ADOQuery1.ExecSQL;
  Application.MessageBox('修改成功！','系统提示',mb_IconInformation+mb_OK);
end;

procedure Tuser_teacher.s_modifyClick(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Tpswd from Teacher where Tno='+''''+trim(LOG.sno_tno_in.Text)+'''');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  if trim(s_oldpas_in.Text)<>trim(ADOQuery1.FieldValues['Tpswd']) then
  Application.MessageBox('原密码不正确，请重新输入','系统提示',mb_IconInformation+mb_OK)
  else
  begin
    if s_sure_in.Text<>s_newpas_in.Text then
    Application.MessageBox('两次密码不一致，请重新输入','系统提示',mb_IconInformation+mb_OK)
    else
    begin
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('update Teacher set Tpswd='+''''+s_sure_in.Text+''' where Tno='+''''+trim(LOG.sno_tno_in.Text)+'''');
      ADOQuery1.ExecSQL;
      Application.MessageBox('修改成功！','系统提示',mb_IconInformation+mb_OK);
    end;
  end;
end;
procedure Tuser_teacher.Label16Click(Sender: TObject);
begin
  P_interest.Show;
  s_m_info.Hide;
  Panel2.Hide;
  S_query.Hide;
  P_MTPas.Hide;
  P_task.Show;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Tdir from Teacher where Tno='+''''+trim(LOG.sno_tno_in.Text)+'''');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  Label18.Caption:=user_teacher.ADOQuery1.FieldValues['Tdir'];

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Project where Pno in(select Pno from TP where Tno='+''''+trim(LOG.sno_tno_in.Text)+''')');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
end;

procedure Tuser_teacher.P_task_get_menuClick(Sender: TObject);
begin
  P_interest.Hide;
  s_m_info.Hide;
  S_query.Hide;
  P_MTPas.Hide;
  Panel2.Hide;
  P_task.Show;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Tdir from Teacher where Tno='+''''+trim(LOG.sno_tno_in.Text)+'''');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  Label18.Caption:=user_teacher.ADOQuery1.FieldValues['Tdir'];

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Project where Pno in(select Pno from TP where Tno='+''''+trim(LOG.sno_tno_in.Text)+''')');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
end;

procedure Tuser_teacher.P_task_q_menuClick(Sender: TObject);
begin
  Panel2.Show;
  P_interest.Hide;
  s_m_info.Hide;
  S_query.Hide;
  P_MTPas.Hide;
  P_task.Hide;
end;

procedure Tuser_teacher.Button2Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Project');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  pno:='000'+IntToStr(ADOQuery1.RecordCount+1);
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('insert into Project values('+''''+pno+''','+''''+trim(Edit1.Text)+''',''Preparing'','+''''+trim(Edit2.Text)+''','+''''+trim(Edit3.Text)+''','+''''+trim(Edit4.Text)+''','+''''+trim(Edit5.Text)+''')');
  ADOQuery1.ExecSQL;

  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from TP');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  tpno:='00'+IntToStr(ADOQuery1.RecordCount+1);
  tptime:=FormatDateTime('yyyymmdd',now());
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('insert into TP values('+''''+tpno+''','+''''+trim(LOG.sno_tno_in.Text)+''','+''''+pno+''','+''''+tptime+''')');
  ADOQuery1.ExecSQL;
  Application.MessageBox('发布成功！','系统提示',mb_IconInformation+mb_OK);
end;

procedure Tuser_teacher.Label3Click(Sender: TObject);
begin
  user_teacher.Close;
  LOG.Show;
end;

initialization
person_state:=0;
student_state:=0;

t_name:='';
t_sex:='';
t_age:='';
t_dept:='';
t_exep:='';
t_dir:='';
t_req:='';
t_tele:='';

pno:='';
tptime:='';
end.
