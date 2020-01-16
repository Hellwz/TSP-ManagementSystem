program test;

uses
  Forms,
  Unit1 in 'Unit1.pas' {LOG},
  Unit2 in 'Unit2.pas' {user_student},
  Unit3 in 'Unit3.pas' {user_register},
  Unit4 in 'Unit4.pas' {user_teacher};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLOG, LOG);
  Application.CreateForm(Tuser_student, user_student);
  Application.CreateForm(Tuser_register, user_register);
  Application.CreateForm(Tuser_teacher, user_teacher);
  Application.Run;
end.
