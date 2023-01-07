program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {FrmPrincipal},
  uFrmCalendario in 'uFrmCalendario.pas' {FrmCalendario},
  uCustomCalendar in 'Units\uCustomCalendar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCalendario, FrmCalendario);
  Application.Run;
end.
