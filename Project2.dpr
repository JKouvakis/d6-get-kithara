program Project2;

uses
  Forms,
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Main in 'Main.pas' {MainForm},
  convert in 'convert.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Kithara Database ( Greek Lyrics, Chords, Tablatures )';
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
