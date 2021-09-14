unit U_animacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Ani, FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_play: TButton;
    crcl1: TCircle;
    fltnmtn1: TFloatAnimation;
    txt_duracao: TEdit;
    lbl_duracao: TLabel;
    btn_pause: TSpeedButton;
    procedure btn_playClick(Sender: TObject);
    procedure fltnmtn1Process(Sender: TObject);
    procedure txt_duracaoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btn_pauseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_pauseClick(Sender: TObject);
begin
    fltnmtn1.Enabled := False;
end;

procedure TForm1.btn_playClick(Sender: TObject);
begin
    fltnmtn1.Enabled := True;
end;

procedure TForm1.fltnmtn1Process(Sender: TObject);
  var txt: Double;
begin
    txt := StrToFloat(txt_duracao.Text);
     fltnmtn1.Duration := txt;


end;

procedure TForm1.txt_duracaoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);

begin

      if txt_duracao.Text <> '' then
        begin
          btn_play.Enabled := True;
          btn_pause.Enabled := True;
        end
        else
        begin
            btn_play.Enabled := False;
        end;


end;

end.
