unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, DB, ADODB;

type
  Tuser_register = class(TForm)
    s_register: TPanel;
    sno: TLabel;
    spswd: TLabel;
    sname: TLabel;
    ssex: TLabel;
    sgrade: TLabel;
    sprize: TLabel;
    smajor: TLabel;
    special: TLabel;
    interest: TLabel;
    stele: TLabel;
    sno_edit: TEdit;
    spswd_edit: TEdit;
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
    RadioGroup2: TRadioGroup;
    student: TRadioButton;
    teacher: TRadioButton;
    t_register: TPanel;
    tno: TLabel;
    tpswd: TLabel;
    tsex: TLabel;
    tname: TLabel;
    tdir: TLabel;
    tdept: TLabel;
    tage: TLabel;
    achievement: TLabel;
    treq: TLabel;
    ttele: TLabel;
    tno_edit: TEdit;
    tpswd_edit: TEdit;
    tname_edit: TEdit;
    RadioGroup3: TRadioGroup;
    tmale: TRadioButton;
    tfemale: TRadioButton;
    tage_edit: TEdit;
    tdept_edit: TEdit;
    achieve_edit: TEdit;
    tdir_edit: TEdit;
    treq_edit: TEdit;
    ttele_edit: TEdit;
    register: TButton;
    Image1: TImage;
    Label2: TLabel;
    Label1: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure studentClick(Sender: TObject);
    procedure teacherClick(Sender: TObject);
    procedure registerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  user_register: Tuser_register;

implementation

uses Unit1;

{$R *.dfm}

procedure Tuser_register.studentClick(Sender: TObject);
begin
  if (student.Checked) then
  begin
    s_register.Show;
    t_register.Hide;
  end
end;

procedure Tuser_register.teacherClick(Sender: TObject);
begin
  if (teacher.Checked) then
  begin
    s_register.Hide;
    t_register.Show;
  end
end;

procedure Tuser_register.registerClick(Sender: TObject);
begin
if student.checked then
  begin
    ADOQuery1.sql.Clear;
    ADOQuery1.sql.Add('insert into Student (Sno,Spswd,Sname,Ssex,Sgrade,Sdept,Sprize,Sspec,Sdir,Scon) values(:a,:b,:c,:d,:e,:f,:g,:h,:i,:j)');
    ADOQuery1.parameters.ParamByName('a').Value:=trim(sno_edit.Text);
    ADOQuery1.parameters.ParamByName('b').Value:=trim(spswd_edit.Text);
    ADOQuery1.parameters.ParamByName('c').Value:=trim(sname_edit.Text);
    if smale.checked then ADOQuery1.parameters.ParamByName('d').Value:='M'
    else  ADOQuery1.parameters.ParamByName('d').Value:='F';
    ADOQuery1.parameters.ParamByName('e').Value:=trim(sgrade_edit.Text);
    ADOQuery1.parameters.ParamByName('f').Value:=trim(smajor_edit.Text);
    ADOQuery1.parameters.ParamByName('g').Value:=trim(sprize_edit.Text);
    ADOQuery1.parameters.ParamByName('h').Value:=trim(special_edit.Text);
    ADOQuery1.parameters.ParamByName('i').Value:=trim(interest_edit.Text);
    ADOQuery1.parameters.ParamByName('j').Value:=trim(stele_edit.Text);
    ADOQuery1.execsql;
    Application.MessageBox('注册成功,请登录','系统提示',mb_IconInformation+mb_OK);
    user_register.Close;
    LOG.Hide;
  end;
if teacher.checked then
  begin
    ADOQuery1.sql.Clear;
    ADOQuery1.sql.Add('insert into Teacher (Tno,Tpswd,Tname,Tsex,Tage,Tdept,Texp,Tdir,Treq,Tcon) values(:a,:b,:c,:d,:e,:f,:g,:h,:i,:j)');
    ADOQuery1.parameters.ParamByName('a').Value:=trim(tno_edit.Text);
    ADOQuery1.parameters.ParamByName('b').Value:=trim(tpswd_edit.Text);
    ADOQuery1.parameters.ParamByName('c').Value:=trim(tname_edit.Text);
    if smale.checked then ADOQuery1.parameters.ParamByName('d').Value:='M'
    else  ADOQuery1.parameters.ParamByName('d').Value:='F';
    ADOQuery1.parameters.ParamByName('e').Value:=trim(tage_edit.Text);
    ADOQuery1.parameters.ParamByName('f').Value:=trim(tdept_edit.Text);
    ADOQuery1.parameters.ParamByName('g').Value:=trim(achieve_edit.Text);
    ADOQuery1.parameters.ParamByName('h').Value:=trim(tdir_edit.Text);
    ADOQuery1.parameters.ParamByName('i').Value:=trim(treq_edit.Text);
    ADOQuery1.parameters.ParamByName('j').Value:=trim(ttele_edit.Text);
    ADOQuery1.execsql;
    Application.MessageBox('注册成功','系统提示',mb_IconInformation+mb_OK);
  end;
end;

end.
