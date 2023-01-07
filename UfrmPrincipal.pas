unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TFrmPrincipal = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.fmx}

uses uFrmCalendario;

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
  try
    try
      FrmCalendario:= TFrmCalendario.Create(nil);
      if FrmCalendario.ShowModal = mrOk then
      begin
      
      end;

    except 

    end;
  finally

  end;
  
end;

end.
