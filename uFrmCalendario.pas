unit uFrmCalendario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, uCustomCalendar,
  FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TFrmCalendario = class(TForm)
    rectCalendario: TRectangle;
    lytNavegacao: TLayout;
    lblMes: TLabel;
    imgAnterior: TImage;
    imgPosterior: TImage;
    lytCalendario: TLayout;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Calendario:tcustomcalendar;
    procedure DayClick(Sender: TObject);
    procedure CarregarMes(Sender: TObject);
  public
    { Public declarations }
  end;

var
  FrmCalendario: TFrmCalendario;

 Const
   Azul = $FF6A7BFF;
   Amarelo = '$FF3B835';
   Branco = $FFFFFF;

implementation

{$R *.fmx}


procedure TFrmCalendario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(Calendario);
end;

procedure TFrmCalendario.FormCreate(Sender: TObject);
const
  dias : array[1..5] of integer = (1,5,12,20,21);
var
  I: Integer;
begin
  Calendario:= TCustomCalendar.Create(lytCalendario);
  Calendario.OnClick:= DayClick ;
  Calendario.setMonth('01/04/2023');
  CarregarMes(Sender);
  Calendario.SelectedDayColor := Branco;


  Calendario.ShowCalendar;
end;

procedure TFrmCalendario.DayClick(Sender: TObject);
var
  dia:integer;
begin
  dia:= Calendario.SelectedDay;
  Calendario.MarkerDay(dia);
  showmessage(Calendario.ResultDaysSelected);
end;

procedure TFrmCalendario.CarregarMes(Sender: TObject);
begin
  lblMes.Text:= Calendario.MonthName;
end;

end.
