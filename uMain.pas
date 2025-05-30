unit uMain;

interface

uses
  System.SysUtils,
  System.Classes,

  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    eURL: TEdit;
    eContent: TMemo;
    btnExecute: TButton;
    procedure btnExecuteClick(Sender: TObject);
  private
    function  GetContent(const AURL: string): string;
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  System.Net.HttpClient;

procedure TfrmMain.btnExecuteClick(Sender: TObject);
begin
  eContent.Text := GetContent(eURL.Text);
end;

{ TfrmMain }

function TfrmMain.GetContent(const AURL: string): string;
begin
  var LHttpClient := THttpClient.Create;
  try
    var LResponse := LHttpClient.Get(AURL);

    if SameText(LResponse.ContentCharSet, 'MS949') then
      Result := LResponse.ContentAsString(TEncoding.ANSI)
    else
    if SameText(LResponse.ContentCharSet, 'utf-8') then
      Result := LResponse.ContentAsString(TEncoding.UTF8);
  finally
    LHttpClient.Free;
  end;
end;

end.
