unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, ComCtrls, SoapHTTPTrans, Psock,
  NMHttp, STrUtils, ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    NMHTTP1: TNMHTTP;
    Edit2: TEdit;
    StatusBar1: TStatusBar;
    Memo2: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TRichEdit;
    Button2: TButton;
    Button3: TButton;
    Timer1: TTimer;
    Edit3: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Memo4: TMemo;
    Memo5: TRichEdit;
    Memo3: TRichEdit;
    Memo6: TMemo;
    Button7: TButton;
    Label3: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure NMHTTP1PacketRecvd(Sender: TObject);
    procedure NMHTTP1Connect(Sender: TObject);
    procedure NMHTTP1ConnectionFailed(Sender: TObject);
    procedure NMHTTP1Disconnect(Sender: TObject);
    procedure NMHTTP1Failure(Cmd: CmdType);
    procedure NMHTTP1HostResolved(Sender: TComponent);
    procedure NMHTTP1InvalidHost(var Handled: Boolean);
    procedure NMHTTP1PacketSent(Sender: TObject);
    procedure NMHTTP1Status(Sender: TComponent; Status: String);
    procedure NMHTTP1Success(Cmd: CmdType);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i:integer;
begin
  NMHTTP1.Get(Edit1.Text);
  Memo1.Text := NMHTTP1.Body;
  If NMHTTP1.CookieIn <> '' then
    begin
      Memo6.Text := NMHTTP1.Header;
      i:=0;
      Edit2.Text := '';
      While  i < Memo6.Lines.Count do
        begin
        if (Leftstr(Memo6.Lines.Strings[i],11)='Set-Cookie:') then
          begin
          If (Edit2.Text = '') then
            Edit2.Text := MidStr(Memo6.Lines.Strings[i],13,length(Memo6.Lines.Strings[i]))
          else
            Edit4.Text := MidStr(Memo6.Lines.Strings[i],13,pos(';',Memo6.Lines.Strings[i])-13);
          end;
          i:=i+1;
        end;
    end;
end;

procedure TForm1.NMHTTP1PacketRecvd(Sender: TObject);
begin
  StatusBar1.SimpleText := IntToStr(NMHTTP1.BytesRecvd)+' of '+IntToStr(NMHTTP1.BytesTotal)+' retrieved';
end;

procedure TForm1.NMHTTP1Connect(Sender: TObject);
begin
  StatusBar1.SimpleText := 'Connected'
end;

procedure TForm1.NMHTTP1ConnectionFailed(Sender: TObject);
begin
  ShowMessage('Connection Failed');
end;

procedure TForm1.NMHTTP1Disconnect(Sender: TObject);
begin
  If StatusBar1 <> nil then
    StatusBar1.SimpleText := 'Disconnected';
end;

procedure TForm1.NMHTTP1Failure(Cmd: CmdType);
begin
  Case Cmd of
    CmdGET: StatusBar1.SimpleText := 'Get Failed';
    CmdOPTIONS: StatusBar1.SimpleText := 'Options Failed';
    CmdHEAD: StatusBar1.SimpleText := 'Head Failed';
    CmdPOST: StatusBar1.SimpleText := 'Post Failed';
    CmdPUT: StatusBar1.SimpleText := 'Put Failed';
    CmdPATCH: StatusBar1.SimpleText := 'Patch Failed';
    CmdCOPY: StatusBar1.SimpleText := 'Copy Failed';
    CmdMOVE: StatusBar1.SimpleText := 'Move Failed';
    CmdDELETE: StatusBar1.SimpleText := 'Delete Failed';
    CmdLINK: StatusBar1.SimpleText := 'Link Failed';
    CmdUNLINK: StatusBar1.SimpleText := 'UnLink Failed';
    CmdTRACE: StatusBar1.SimpleText := 'Trace Failed';
    CmdWRAPPED: StatusBar1.SimpleText := 'Wrapped Failed';
  end;
end;

procedure TForm1.NMHTTP1HostResolved(Sender: TComponent);
begin
  StatusBar1.SimpleText := 'Host Resolved';
end;

procedure TForm1.NMHTTP1InvalidHost(var Handled: Boolean);
var
  TmpStr: String;
begin
  If InputQuery('Invalid Host!', 'Specify a new host:', TmpStr) then
  Begin
    NMHTTP1.Host := TmpStr;
    Handled := TRUE;
  End;
end;

procedure TForm1.NMHTTP1PacketSent(Sender: TObject);
begin
  StatusBar1.SimpleText := IntToStr(NMHTTP1.BytesSent)+' of '+IntToStr(NMHTTP1.BytesTotal)+' sent';
end;

procedure TForm1.NMHTTP1Status(Sender: TComponent; Status: String);
begin
  If StatusBar1 <> nil then
  Begin
    StatusBar1.SimpleText := status;
    If NMHTTP1.ReplyNumber = 404 then
      StatusBar1.SimpleText := 'Object Not Found';
  End;
end;

procedure TForm1.NMHTTP1Success(Cmd: CmdType);
begin
  Case Cmd of
    CmdGET: StatusBar1.SimpleText := 'Get Succeeded';
    CmdOPTIONS: StatusBar1.SimpleText := 'Options Succeeded';
    CmdHEAD: StatusBar1.SimpleText := 'Head Succeeded';
    CmdPOST: StatusBar1.SimpleText := 'Post Succeeded';
    CmdPUT: StatusBar1.SimpleText := 'Put Succeeded';
    CmdPATCH: StatusBar1.SimpleText := 'Patch Succeeded';
    CmdCOPY: StatusBar1.SimpleText := 'Copy Succeeded';
    CmdMOVE: StatusBar1.SimpleText := 'Move Succeeded';
    CmdDELETE: StatusBar1.SimpleText := 'Delete Succeeded';
    CmdLINK: StatusBar1.SimpleText := 'Link Succeeded';
    CmdUNLINK: StatusBar1.SimpleText := 'UnLink Succeeded';
    CmdTRACE: StatusBar1.SimpleText := 'Trace Succeeded';
    CmdWRAPPED: StatusBar1.SimpleText := 'Wrapped Succeeded';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   i,j: integer;
   loctemp: string;
begin
  Button6Click(Form1);
  For i:=0 to Memo4.Lines.Count-1 do
    begin
    sleep(5000);
    NMHTTP1.Get(Memo4.Lines.Strings[i]);
    Memo5.Text := NMHTTP1.Body;
    For j:=0 to Memo5.Lines.Count-1 do
    If Pos('<a href="ss.php?',Memo5.Lines.Strings[j])>0 then
      begin
        loctemp:=Memo5.Lines.Strings[j];
        loctemp:=Rightstr(loctemp,length(loctemp)-9);
        loctemp:=Leftstr(loctemp,pos('"',loctemp)+1);
        loctemp:='http://www.kithara.vu/' + loctemp;
        loctemp:=Leftstr(loctemp,length(loctemp)-2);
        loctemp:=loctemp + '&prnt=1&transp=0&hideTabl=0&hideChrd=0';
        Memo2.Lines.Add(loctemp);
      end;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: integer;
  sec: integer;
  H, M, S: string;
  ZH, ZM, ZS: Integer;
  F: TextFile;
  filename: string;
  hour:string;
begin
  For i:=strtoint(Edit3.Text) to Memo2.Lines.Count-1 do
    begin
      NMHTTP1.HeaderInfo.Cookie:=Edit2.Text;
      NMHTTP1.Get(Memo2.Lines.Strings[i]);
      filename :=  'c:\temp\' + inttostr(i) + '.html';
      AssignFile(F, filename);
      Rewrite(F);
      Memo3.Text:=NMHTTP1.Body;
      Writeln(F,Memo3.Text);
      CloseFile(F);
      sleep(6000);

      sec:=(Memo2.Lines.Count-i)*7;
      ZH := Sec div 3600;
      ZM := Sec div 60 - ZH * 60;
      ZS := Sec - (ZH * 3600 + ZM * 60);
      H := IntToStr(ZH);
      M := IntToStr(ZM);
      S := IntToStr(ZS);
      hour := ' ' + H + ' hours ' + M + ' mins ' + S + ' secs';

//      Form1.Caption:='Processing . . . ' + inttostr(i+1) + ' of ' + inttostr(Memo2.Lines.Count);
      Form1.Caption:='Project1 - Processing . . . ' + inttostr(i+1) + ' of ' +
        inttostr(Memo2.Lines.Count) + ' in about ' + hour;
    end;
    Form1.StatusBar1.SimpleText := 'Finished';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Memo1.Clear;
  Edit1.Clear;
//  Edit2.Clear;
  Edit3.Text := '0';
  Memo2.Clear;
  Memo3.Clear;
  Memo4.Clear;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
   i: integer;
   loctemp: string;
begin
  Memo4.Clear;
  For i:=0 to Memo1.Lines.Count-1 do
    If Pos('cmd=ai&art=',Memo1.Lines.Strings[i])>0 then
      begin
        loctemp:=Memo1.Lines.Strings[i];
        loctemp:=Rightstr(loctemp,length(loctemp)-9);
        loctemp:=Leftstr(loctemp,pos('"',loctemp)+1);
        loctemp:='http://www.kithara.vu/' + loctemp;
        loctemp:=Leftstr(loctemp,length(loctemp)-2);
        Memo4.Lines.Add(loctemp);
      end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form2.Show;
end;

end.
