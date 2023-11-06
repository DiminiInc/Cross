program CrossProject;

uses
  Vcl.Forms,
  Cross in 'Cross.pas' {App},
  About in 'About.pas' {AboutForm},
  Help in 'Help.pas' {HelpForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TApp, App);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(THelpForm, HelpForm);
  Application.Run;
end.
