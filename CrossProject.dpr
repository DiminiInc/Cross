program CrossProject;

uses
  Vcl.Forms,
  Cross in 'Cross.pas' {App};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TApp, App);
  Application.Run;
end.
