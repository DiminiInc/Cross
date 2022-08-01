program CrossProject;

uses
  Vcl.Forms,
  Cross in 'Cross.pas' {App},
  About in 'About.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TApp, App);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
