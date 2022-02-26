program correct_db;

uses
  Forms,
  correct in 'correct.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Correct DB';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
