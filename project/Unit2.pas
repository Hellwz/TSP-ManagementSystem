unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, DB, ADODB;

type
  Tuser_student = class(TForm)
    Panel8: TPanel;
    P_person_menu: TPanel;
    Label4: TLabel;
    Image2: TImage;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    P_teacher_q_menu: TPanel;
    Label7: TLabel;
    Image3: TImage;
    Panel6: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    P_task_q_menu: TPanel;
    Label8: TLabel;
    Image4: TImage;
    Panel7: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    P_interest: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Image6: TImage;
    Label18: TLabel;
    P_task_undo: TPanel;
    DBGrid1: TDBGrid;
    P_task_finish: TPanel;
    Label20: TLabel;
    DBGrid2: TDBGrid;
    L_task_undo: TLabel;
    P_MSPas: TPanel;
    s_oldpas: TLabel;
    s_newpas: TLabel;
    s_sure: TLabel;
    s_oldpas_in: TEdit;
    s_newpas_in: TEdit;
    s_sure_in: TEdit;
    s_modify: TButton;
    Label23: TLabel;
    s_m_info: TPanel;
    sname: TLabel;
    ssex: TLabel;
    sgrade: TLabel;
    sprize: TLabel;
    smajor: TLabel;
    special: TLabel;
    interest: TLabel;
    stele: TLabel;
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
    Label19: TLabel;
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
    Label3: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Panel3: TPanel;
    Image5: TImage;
    Label21: TLabel;
    Panel4: TPanel;
    Label22: TLabel;
    Label24: TLabel;
    Edit2: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Image7: TImage;
    Label28: TLabel;
    Edit5: TEdit;
    Label29: TLabel;
    procedure P_person_menuClick(Sender: TObject);
    procedure P_teacher_q_menuClick(Sender: TObject);
    procedure P_task_q_menuClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure S_GoQuerryClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure s_modifyClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user_student: Tuser_student;
  s_name:String;
  s_sex:String;
  s_grade:String;
  s_major:String;
  s_prize:String;
  s_special:String;
  s_interest:String;
  s_tele:String;

  spno:String;
  stno:String;
  sptime:String;

  p2_state: Integer;
  p3_state: Integer;
  p4_state: Integer;
implementation

uses Unit1;
{$R *.dfm}

procedure Tuser_student.P_person_menuClick(Sender: TObject);
begin
  if p2_state=1 then
  begin
    Panel1.Hide;
    P_teacher_q_menu.Top:=P_teacher_q_menu.Top-50;
    P_task_q_menu.Top:=P_task_q_menu.Top-50;
    Panel6.Top:=Panel6.Top-50;
    Panel7.Top:=Panel7.Top-50;
    Panel3.Top:=Panel3.Top-50;
    p2_state:=0;
  end
  else
  begin
    Panel1.Show;
    P_teacher_q_menu.Top:=P_teacher_q_menu.Top+50;
    P_task_q_menu.Top:=P_task_q_menu.Top+50;
    Panel6.Top:=Panel6.Top+50;
    Panel7.Top:=Panel7.Top+50;
    Panel3.Top:=Panel3.Top+50;
    p2_state:=1;
  end;
end;

procedure Tuser_student.P_teacher_q_menuClick(Sender: TObject);
begin
  if p3_state=1 then
  begin
    Panel6.Hide;
    P_task_q_menu.Top:=P_task_q_menu.Top-75;
    Panel7.Top:=Panel7.Top-75;
    Panel3.Top:=Panel3.Top-75;
    p3_state:=0;
  end
  else
  begin
    Panel6.Show;
    P_task_q_menu.Top:=P_task_q_menu.Top+75;
    Panel7.Top:=Panel7.Top+75;
    Panel3.Top:=Panel3.Top+75;
    p3_state:=1;
  end;
end;

procedure Tuser_student.P_task_q_menuClick(Sender: TObject);
begin
  if p4_state=1 then
  begin
    Panel7.Hide;
    Panel3.Top:=Panel3.Top-75;
    p4_state:=0;
  end
  else
  begin
    Panel7.Show;
    Panel3.Top:=Panel3.Top+75;
    p4_state:=1;
  end;
end;

procedure Tuser_student.Label5Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  P_task_finish.Hide;
  s_m_info.Hide;
  Panel4.Hide;
  S_query.Hide;
  P_MSPas.Show;
end;

procedure Tuser_student.Label13Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  P_task_finish.Hide;
  s_m_info.Hide;
  P_MSPas.Hide;
  Panel4.Hide;
  LS_query.Caption:='任务查询 > 发布人查询';
  S_term.Caption:='发布人：';
  Panel2.Show;
  S_query.Show;
end;

procedure Tuser_student.Label6Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  P_task_finish.Hide;
  S_query.Hide;
  Panel4.Hide;
  P_MSPas.Hide;
  s_m_info.Show;
end;

procedure Tuser_student.Label14Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  s_m_info.Hide;
  P_MSPas.Hide;
  Panel4.Hide;
  LS_query.Caption:='任务查询 > 实验室查询';
  S_term.Caption:='实验室：';
  S_query.Show;
  P_task_finish.Hide;
end;

procedure Tuser_student.Label10Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  P_task_finish.Hide;
  s_m_info.Hide;
  P_MSPas.Hide;
  Panel4.Hide;
  LS_query.Caption:='老师查询 > 职工号查询';
  S_term.Caption:='职工号：';
  Panel2.Hide;
  S_query.Show;
end;

procedure Tuser_student.Label11Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  P_task_finish.Hide;
  s_m_info.Hide;
  P_MSPas.Hide;
  Panel4.Hide;
  LS_query.Caption:='老师查询 > 姓名查询';
  S_term.Caption:='姓名：';
  Panel2.Hide;
  S_query.Show;
end;

procedure Tuser_student.Label12Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  P_task_finish.Hide;
  s_m_info.Hide;
  P_MSPas.Hide;
  Panel4.Hide;
  LS_query.Caption:='老师查询 > 院系查询';
  S_term.Caption:='院系：';
  Panel2.Hide;
  S_query.Show;
end;

procedure Tuser_student.S_GoQuerryClick(Sender: TObject);
begin
  if (S_term.Caption='职工号：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Teacher where Tno='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
  else if(S_term.Caption='姓名：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Teacher where Tname='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
  else if(S_term.Caption='院系：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Teacher where Tdept='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
  else if(S_term.Caption='发布人：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Project where Pno in(select Pno from TP where Tno in(select Tno from Teacher where Tname='+''''+trim(S_term_in.Text)+'''))');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
  else if(S_term.Caption='实验室：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Project where Plab='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
end;

procedure Tuser_student.Label9Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  s_m_info.Hide;
  P_MSPas.Hide;
  S_query.Hide;
  Panel4.Hide;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from Project');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  P_task_finish.Show;
end;

procedure Tuser_student.Label16Click(Sender: TObject);
begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select Sdir from Student where Sno='+''''+trim(LOG.sno_tno_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
    Label18.Caption:=user_student.ADOQuery1.FieldValues['Sdir'];

    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Project where Pno in(select Pno from SP where Sno='+''''+trim(LOG.sno_tno_in.Text)+''')');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;

    S_query.Hide;
    s_m_info.Hide;
    P_task_finish.Hide;
    P_MSPas.Hide;
    Panel4.Hide;
    P_interest.Show;
    P_task_undo.Show;
end;

procedure Tuser_student.Button1Click(Sender: TObject);

begin
  s_name:=sname_edit.Text;
  if smale.Checked then s_sex:='M';
  if sfemale.Checked then s_sex:='F';
  s_grade:=sgrade_edit.Text;
  s_major:=smajor_edit.Text;
  s_prize:=sprize_edit.Text;
  s_special:=special_edit.Text;
  s_interest:=interest_edit.Text;
  s_tele:=stele_edit.Text;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('update Student set Sname='+''''+s_name+''',Ssex='+''''+s_sex+''',Sgrade='+''''+s_grade+''',Sspec='+''''+s_special+''',Sdept='+''''+s_major+''',Sprize='+''''+s_prize+''',Sdir='+''''+s_interest+''',Scon='+''''+s_tele+''' where Sno='+''''+trim(LOG.sno_tno_in.Text)+'''');
  ADOQuery1.ExecSQL;
  Application.MessageBox('修改成功！','系统提示',mb_IconInformation+mb_OK);
end;

procedure Tuser_student.s_modifyClick(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select Spswd from Student where Sno='+''''+trim(LOG.sno_tno_in.Text)+'''');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  if trim(s_oldpas_in.Text)<>trim(ADOQuery1.FieldValues['Spswd']) then
  Application.MessageBox('原密码不正确，请重新输入','系统提示',mb_IconInformation+mb_OK)
  else
  begin
    if s_sure_in.Text<>s_newpas_in.Text then
    Application.MessageBox('两次密码不一致，请重新输入','系统提示',mb_IconInformation+mb_OK)
    else
    begin
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('update Student set Spswd='+''''+s_sure_in.Text+''' where Sno='+''''+trim(LOG.sno_tno_in.Text)+'''');
      ADOQuery1.ExecSQL;
      Application.MessageBox('修改成功！','系统提示',mb_IconInformation+mb_OK);
    end;
  end;


end;

procedure Tuser_student.Panel3Click(Sender: TObject);
begin
  P_interest.Hide;
  P_task_undo.Hide;
  P_task_finish.Hide;
  s_m_info.Hide;
  P_MSPas.Hide;
  Panel2.Hide;
  S_query.Hide;
  Panel4.Show;
end;

procedure Tuser_student.Image7Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from SP');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  spno:='00'+IntToStr(ADOQuery1.RecordCount+1);
  sptime:=FormatDateTime('yyyymmdd',now());
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('insert into SP values('+''''+spno+''','+''''+trim(LOG.sno_tno_in.Text)+''','+''''+trim(Edit1.Text)+''','+''''+sptime+''')');
  ADOQuery1.ExecSQL;
  Application.MessageBox('接取成功！','系统提示',mb_IconInformation+mb_OK);
  if(S_term.Caption='发布人：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Project where Pno in(select Pno from TP where Tno in(select Tno from Teacher where Tname='+''''+trim(S_term_in.Text)+'''))');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end
  else if(S_term.Caption='实验室：') then
  begin
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('select * from Project where Plab='+''''+trim(S_term_in.Text)+'''');
    if ADOQuery1.Active then
    ADOQuery1.Close;
    ADOQuery1.Open;
  end;
end;

procedure Tuser_student.Button2Click(Sender: TObject);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('select * from ST');
  if ADOQuery1.Active then
  ADOQuery1.Close;
  ADOQuery1.Open;
  stno:='00'+IntToStr(ADOQuery1.RecordCount+1);
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('insert into ST values('+''''+stno+''','+''''+trim(LOG.sno_tno_in.Text)+''','+''''+trim(Edit5.Text)+''','+''''+trim(Edit4.Text)+''','+''''+trim(Edit3.Text)+''','+''''+trim(Edit2.Text)+''',0)');
  ADOQuery1.ExecSQL;
  Application.MessageBox('评价成功！','系统提示',mb_IconInformation+mb_OK);
end;

procedure Tuser_student.Label29Click(Sender: TObject);
begin
  user_student.Close;
  LOG.Show;
end;

initialization
s_name:='';
s_sex:='';
s_grade:='';
s_major:='';
s_prize:='';
s_special:='';
s_interest:='';
s_tele:='';
spno:='';
stno:='';
sptime:='';
p2_state:=0;
p3_state:=0;
p4_state:=0;
end.
