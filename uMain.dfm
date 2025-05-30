object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'GetContent'
  ClientHeight = 463
  ClientWidth = 696
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object eURL: TEdit
    Left = 8
    Top = 16
    Width = 681
    Height = 23
    TabOrder = 0
    Text = 
      'https://cafe.naver.com/delmadang?iframe_url_utf8=%2FArticleRead.' +
      'nhn%253Fclubid%3D10382011%2526articleid%3D3676%2526referrerAllAr' +
      'ticles%3Dtrue'
  end
  object eContent: TMemo
    Left = 8
    Top = 80
    Width = 681
    Height = 374
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnExecute: TButton
    Left = 614
    Top = 48
    Width = 75
    Height = 25
    Caption = #49892#54665
    TabOrder = 2
    OnClick = btnExecuteClick
  end
end
