unit correct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ABSMain, DB;

type
  TForm1 = class(TForm)
    ABSTable2: TABSTable;
    ABSTable2Id: TStringField;
    ABSTable2Title: TStringField;
    ABSTable2Artist: TStringField;
    ABSTable2Music: TStringField;
    ABSTable2Poem: TStringField;
    ABSTable2Song: TMemoField;
    ABSTable2Contain: TStringField;
    ABSTable1: TABSTable;
    ABSTable1Id: TStringField;
    ABSTable1Letter: TStringField;
    ABSTable1Title: TStringField;
    ABSTable1Artist: TStringField;
    ABSTable1Music: TStringField;
    ABSTable1Poem: TStringField;
    ABSTable1Status: TBooleanField;
    ABSDatabase2: TABSDatabase;
    ABSDatabase1: TABSDatabase;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  j,i:integer;
  SearchOptions: TLocateOptions;
begin
  i:=0;
  ABSTable1.First;
  for j:=0 to ABSTable1.RecordCount do
    begin
      if not ABSTable2.Locate('Id',Abstable1.Fields.Fields[0].AsString,SearchOptions) then
        begin
         ABSTable1.Edit;
//          ShowMessage(Abstable1.Fields.Fields[0].AsString);
          ABSTable1.FieldByName('Status').AsString := 'False';
//          ABSTable1.FieldByName('Id').AsString := Memo6.Lines[j];
//          ABSTable1.FieldByName('Letter').AsString := Letter[i];
//          ABSTable1.FieldByName('Status').AsString := 'False';
//          ABSTable1.Post;
          inc(i);
         ABSTable1.Post;
        end;
      ABSTable1.Next;
    end;
  ShowMessage(IntToStr(i));
end;

end.
