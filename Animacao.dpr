program Animacao;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_animacao in 'U_animacao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
