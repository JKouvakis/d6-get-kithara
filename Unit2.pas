unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ABSMain, StdCtrls, Grids, DBGrids, Buttons, ComCtrls,
  ValEdit,Strutils;

type
  TForm2 = class(TForm)
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    SpeedButton40: TSpeedButton;
    SpeedButton41: TSpeedButton;
    SpeedButton42: TSpeedButton;
    SpeedButton43: TSpeedButton;
    SpeedButton44: TSpeedButton;
    SpeedButton45: TSpeedButton;
    SpeedButton46: TSpeedButton;
    SpeedButton47: TSpeedButton;
    SpeedButton48: TSpeedButton;
    SpeedButton49: TSpeedButton;
    SpeedButton50: TSpeedButton;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    GroupBox4: TGroupBox;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton53: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton55: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    SpeedButton68: TSpeedButton;
    SpeedButton69: TSpeedButton;
    SpeedButton70: TSpeedButton;
    SpeedButton71: TSpeedButton;
    SpeedButton72: TSpeedButton;
    SpeedButton73: TSpeedButton;
    SpeedButton74: TSpeedButton;
    SpeedButton75: TSpeedButton;
    TabSheet2: TTabSheet;
    GroupBox5: TGroupBox;
    Edit1: TEdit;
    Button2: TButton;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    Button3: TButton;
    GroupBox7: TGroupBox;
    Edit3: TEdit;
    Button4: TButton;
    Button10: TButton;
    Button1: TButton;
    GroupBox8: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox9: TGroupBox;
    GroupBox11: TGroupBox;
    Button6: TButton;
    Button5: TButton;
    GroupBox10: TGroupBox;
    Label1: TLabel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    DataSource2: TDataSource;
    ABSDatabase1: TABSDatabase;
    ABSTable1: TABSTable;
    GroupBox13: TGroupBox;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    SpeedButton78: TSpeedButton;
    letters: TValueListEditor;
    ComboBox1: TComboBox;
    SpeedButton79: TSpeedButton;
    SpeedButton80: TSpeedButton;
    ABSQuery1: TABSQuery;
    DataSource1: TDataSource;
    RadioButton1: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure titleClick(Sender: TObject);
    procedure artistClick(Sender: TObject);
    procedure compClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton76Click(Sender: TObject);
    procedure SpeedButton77Click(Sender: TObject);
    procedure SpeedButton78Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton79Click(Sender: TObject);
    procedure SpeedButton80Click(Sender: TObject);
  private
    procedure Display(Sender: TObject);
  public
    procedure WMGetMinMaxInfo(var Msg:TMessage); message WM_GETMINMAXINFO;
  end;

var
  Form2: TForm2;
  contain: string;
  filtertit,filtercom,filtercr,filterlet :string;

implementation

uses Unit3, Unit1, Main;

{$R *.dfm}

procedure TForm2.WMGetMinMaxInfo(var Msg:TMessage);
{Windows sends this message in order to get the min/max sizes}
var infoptr:^TMINMAXINFO;
{You'll need this structure to read/set the values}
begin
  infoptr:=Pointer(Msg.lParam); {Get structure}
  infoptr^.ptMaxSize.x:=846;  {Width of form when maximized}
  infoptr^.ptMaxSize.y:=Screen.Height-30;  {Height of form when maximized}
  infoptr^.ptMaxPosition.x:=Form2.Left;  {Form.Left when maximized}
  infoptr^.ptMaxPosition.y:=1;  {Form.Top when maximized}
  infoptr^.ptMinTrackSize.x:=846; {min width you can achieve with mouse}
  infoptr^.ptMinTrackSize.y:=479; {min height you can achieve with mouse}
  infoptr^.ptMaxTrackSize.x:=846; {max width you can achieve with mouse}
  infoptr^.ptMaxTrackSize.y:=Screen.Height-30; {max height you can achieve with mouse}
end;

procedure TForm2.Display(Sender: TObject);
var filter,query:string;
    a,b,c:boolean;
begin

  filterlet:='';
  a:=false; b:=false; c:=false;

  if TabSheet1.Showing = true then
    begin
      DBGrid1.DataSource := DataSource2;
      if filtertit<>'' then
        a:=true;
      if filtercom<>'' then
        b:=true;
      if filtercr<>'' then
        c:=true;

      filterlet := filtertit;
      if (a=True) then
        begin
          if b=True then
            filterlet:= filterlet + ' and '
//          else if c=True then
//            filterlet:= filterlet + ' and ';
        end;
      filterlet := filterlet + filtercom;
      if (c=True) then
        begin
          if a=True then
            filterlet:= filterlet + ' and '
          else if b=True then
            filterlet:= filterlet + ' and ';
        end;
      filterlet := filterlet + filtercr;
      if filterlet='' then
        filter := contain
      else
        begin
          if contain='' then
            filter := filterlet
          else
            filter := filterlet + ' and ' + contain;
        end;
      ABSTable1.Filter := filter;
      ABSTable1.Filtered := True;
      Label6.Caption := Inttostr(ABSTable1.RecordCount);
    end
  else
    begin
      DBGrid1.DataSource := DataSource1;
      query:='Select * From songs';
      if Edit1.text<>'' then
        a:=true;
      if Edit2.text<>'' then
        b:=true;
      if Edit3.text<>'' then
        c:=true;

      If Edit1.Text <>'' then
        begin
          filterlet := 'Where Title';
          if radiobutton1.Checked then
            filterlet := filterlet + ' Like "%' + Edit1.text + '%"'
          else
            filterlet := filterlet + '="' + Edit1.text + '"';
        end;
      if (a=True) then
        begin
          if b=True then
            filterlet:= filterlet + ' and '
//          else if c=True then
//            filterlet:= filterlet + ' and ';
        end;
      If Edit2.Text <>'' then
        begin
          filterlet := 'Where Artist';
          if radiobutton15.Checked then
            filterlet := filterlet + ' Like "%' + Edit2.text + '%"'
          else
            filterlet := filterlet + '="' + Edit2.text + '"';
        end;
      if (c=True) then
        begin
          if a=True then
            filterlet:= filterlet + ' and '
          else if b=True then
            filterlet:= filterlet + ' and ';
        end;
      If Edit3.Text <>'' then
        begin
          if radiobutton17.Checked then
            filterlet := filterlet + 'Where (Music Like "%' + Edit3.text + '%" or Poem Like "%' + Edit3.text + '%")'
          else
            filterlet := filterlet + 'Where (Music="' + Edit3.text + '" or Poem="' + Edit3.text + '")';
        end;
      if filterlet='' then
        filter := contain
      else
        begin
          if contain='' then
            filter := filterlet
          else
            filter := filterlet + ' and ' + contain;
        end;
      ShowMessage(query + ' ' + filter + ';');
      query:=query + ' ' + filter + ';';
      ABSQuery1.SQL.Add(query);
      ABSQuery1.Active := true;
      Label6.Caption := Inttostr(ABSQuery1.RecordCount);
    end;

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Label5.Caption := inttostr(Abstable1.RecordCount);
  Label6.Caption := Inttostr(ABSTable1.RecordCount);
  Combobox1.ItemIndex := 5;
//  ABSTable1.AddIndex('ByTitle','Title',[ixCaseInsensitive]);
end;

procedure TForm2.titleClick(Sender: TObject);
var
  let,leta :string;
  i:integer;
begin
  with (Sender As TSpeedButton) do
    if (down = true) then
      begin
        filtertit := '';
        let:=Letters.Values[Letters.Keys[tag-1]];
        for i:=1 to length(let) do
          begin
            leta:=midstr(let,i,1);
            if leta<>',' then
              begin
                if filtertit<>'' then
                  filtertit := filtertit + ' or Title="' + leta + '*"'
                else
                  filtertit := '(Title="' +leta +'*"';
              end;
          end;
        filtertit := filtertit + ')';
        Display(form2);
        down:= true;
      end
    else
      begin
        filtertit := '';
        Display(form2);
        down:= false;
      end;
end;

procedure TForm2.artistClick(Sender: TObject);
var
  let,leta :string;
  i:integer;
begin
  with (Sender As TSpeedButton) do
    if (down = true) then
      begin
        filtercom := '';
        let:=Letters.Values[Letters.Keys[tag-1]];
        for i:=1 to length(let) do
          begin
            leta:=midstr(let,i,1);
            if leta<>',' then
              begin
                if filtercom<>'' then
                  filtercom := filtercom + ' or Artist="' + leta + '*"'
                else
                  filtercom := '(Artist="' +leta +'*"';
              end;
          end;
        filtercom := filtercom + ')';
        Display(form2);
        down:= true;
      end
    else
      begin
        filtercom := '';
        Display(form2);
        down:= false;
      end;
end;

procedure TForm2.compClick(Sender: TObject);
var
  let,leta :string;
  i:integer;
begin
  with (Sender As TSpeedButton) do
    if (down = true) then
      begin
        filtercr := '';
        let:=Letters.Values[Letters.Keys[tag-1]];
        for i:=1 to length(let) do
          begin
            leta:=midstr(let,i,1);
            if leta<>',' then
              begin
                if filtercr<>'' then
                  filtercr := filtercr + ' or Music="' +leta +'*" or Poem="' + leta + '*"'
                else
                  filtercr := '(Music="' +leta +'*" or Poem="' + leta + '*"';
              end;
          end;
        filtercr := filtercr + ')';
        Display(form2);
        down:= true;
      end
    else
      begin
        filtercr := '';
        Display(form2);
        down:= false;
      end;
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TForm2.SpeedButton76Click(Sender: TObject);
begin
  contain:='';
  display(Form2);
end;

procedure TForm2.SpeedButton77Click(Sender: TObject);
begin
  contain:='Contain="(+x)"';
  display(Form2);
end;

procedure TForm2.SpeedButton78Click(Sender: TObject);
begin
  contain:='Contain="(+t)*"';
  display(Form2);
end;

procedure TForm2.PageControl1Change(Sender: TObject);
begin
  If TabSheet1.Showing = True Then
    begin
      Button1.Enabled := False;
      Button10.Enabled := False;
      Display(form2);
    end;
  If TabSheet2.Showing = True Then
    begin
      Button1.Enabled := True;
      Button10.Enabled := True;
    end;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  Form3.Show;
  MainForm.Show;
end;

procedure TForm2.RadioButton9Click(Sender: TObject);
begin
  with Sender as TRadioButton do
    begin
      Combobox1.ItemIndex := Tag;
    end;
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
  Display(form2);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Edit1.Text := '';
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Edit2.Text := '';
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Edit3.Text := '';
end;

procedure TForm2.FormResize(Sender: TObject);
begin
  GroupBox8.Height:=Form2.Height-238;
  DBgrid1.Height := GroupBox8.Height-19;
end;

procedure TForm2.DBGrid1TitleClick(Column: TColumn);
begin
  ABSTable1.IndexName:='By'+Column.FieldName;

//  ShowMessage(Column.FieldName);
end;

procedure TForm2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_return Then
  Form3.Show;
end;

procedure TForm2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_return Then
  Display(form2);
end;

procedure TForm2.SpeedButton79Click(Sender: TObject);
begin
  contain:='Contain="(*"';
  display(Form2);
end;

procedure TForm2.SpeedButton80Click(Sender: TObject);
begin
  contain:='Contain=""';
  display(Form2);
end;

end.
