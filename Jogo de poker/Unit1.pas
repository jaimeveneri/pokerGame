unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1  : TPanel;
    Panel2  : TPanel;
    Panel3  : TPanel;
    Label1  : TLabel;
    Label2  : TLabel;
    Label3  : TLabel;
    Label4  : TLabel;
    Label5  : TLabel;
    Label6  : TLabel;
    Label7  : TLabel;
    Label13 : TLabel;
    Label14 : TLabel;
    Label15 : TLabel;
    Label16 : TLabel;
    Label17 : TLabel;
    Label18 : TLabel;
    RGNaipeCarta1Jogador1: TRadioGroup;
    RGNaipeCarta2Jogador1: TRadioGroup;
    RGNaipeCarta3Jogador1: TRadioGroup;
    RGNaipeCarta4Jogador1: TRadioGroup;
    RGNaipeCarta5Jogador1: TRadioGroup;
    RGNaipeCarta1Jogador2: TRadioGroup;
    RGNaipeCarta2Jogador2: TRadioGroup;
    RGNaipeCarta3Jogador2: TRadioGroup;
    RGNaipeCarta4Jogador2: TRadioGroup;
    RGNaipeCarta5Jogador2: TRadioGroup;
    CBCarta1Jogador1: TComboBox;
    CBCarta2Jogador1: TComboBox;
    CBCarta3Jogador1: TComboBox;
    CBCarta4Jogador1: TComboBox;
    CBCarta5Jogador1: TComboBox;
    CBCarta1Jogador2: TComboBox;
    CBCarta2Jogador2: TComboBox;
    CBCarta3Jogador2: TComboBox;
    CBCarta4Jogador2: TComboBox;
    CBCarta5Jogador2: TComboBox;
    Button1: TButton;
    LbResultado: TLabel;
    LbJogo: TLabel;
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Carta1J1  : Integer;
  Carta2J1  : Integer;
  Carta3J1  : Integer;
  Carta4J1  : Integer;
  Carta5J1  : Integer;
  Carta1J2  : Integer;
  Carta2J2  : Integer;
  Carta3J2  : Integer;
  Carta4J2  : Integer;
  Carta5J2  : Integer;
  NaipeC1J1 : Integer;
  NaipeC2J1 : Integer;
  NaipeC3J1 : Integer;
  NaipeC4J1 : Integer;
  NaipeC5J1 : Integer;
  NaipeC1J2 : Integer;
  NaipeC2J2 : Integer;
  NaipeC3J2 : Integer;
  NaipeC4J2 : Integer;
  NaipeC5J2 : Integer;
  max       : Integer;
  CartaPar       : Integer;
  DoisPares      : Integer;
  DesempateParJ1 : Integer;
  DesempateParJ2 : Integer;
  CartaTrinca    : Integer;
  CartaQuadra    : Integer;
  CartaFullHouse : Integer;
  JogoGanhador   : Integer;
  jj, kk , ll    : Integer;
  ArrayCartas    : array[1..5] of Integer;
  ArrayCartasAux : array[1..5] of Integer;
implementation

{$R *.dfm}

procedure OrdenaCartas(c1 , c2, c3, c4, c5: integer);
var
i, x , aux : integer;
begin
ArrayCartas[1] := c1;
ArrayCartas[2] := c2;
ArrayCartas[3] := c3;
ArrayCartas[4] := c4;
ArrayCartas[5] := c5;

    for i := 1 to 5 do
    begin
	      for x := 1 to 5 do
	      begin
		        if ArrayCartas[x] > ArrayCartas[i]then
		        begin
		            aux := ArrayCartas[x];
		            ArrayCartas[x] := ArrayCartas[i];
		            ArrayCartas[i] := aux;
		        end;
	      end;
    end;
ArrayCartasAux[1] := ArrayCartas[1];
ArrayCartasAux[2] := ArrayCartas[2];
ArrayCartasAux[3] := ArrayCartas[3];
ArrayCartasAux[4] := ArrayCartas[4];
ArrayCartasAux[5] := ArrayCartas[5];
end;

function verificaCartaMaior(): integer;
var
i  : integer;
begin
max := 0;
   for i := 1 to 5 do
   begin
         if(ArrayCartas[i] > max)then
        		max := ArrayCartas[i];
   end;
   Result := max;
end;

Function VerificaStraight(): Boolean;
begin
    if(ArrayCartas[5] = ArrayCartas[4] + 1) and (ArrayCartas[4] = ArrayCartas[3] + 1)
  and (ArrayCartas[3] = ArrayCartas[2] + 1) and (ArrayCartas[2] = ArrayCartas[1] + 1) then
         Result := true
    else Result := false
end;

function VerificaFlush( n1, n2, n3, n4, n5: integer): Boolean;
begin
    if((n1 = n2) and (n2 = n3) and (n3 = n4)and (n4 = n5))then
         Result := true
    else Result := false
end;

function VerificaStraightFlush(n1, n2, n3, n4, n5: integer): Boolean;
begin
    if VerificaStraight() and VerificaFlush(n1, n2, n3, n4, n5) then
         Result := true
    else Result := false
end;

function VerificaQuadra() : Boolean;
var
i , j , k , l: integer;
begin
result := false;
jj     := 2;
kk     := 3;
ll     := 4;

    for i := 1 to 2 do
    begin
	      for j := jj to 3 do
	      begin
            for k := kk to 4 do
	          begin
                 for  l := ll to 5 do
                 begin
		                if (ArrayCartas[i] = ArrayCartas[j]) and (ArrayCartas[j] = ArrayCartas[k])and (ArrayCartas[k] = ArrayCartas[l]) then
		                begin
                        result       := true;
                        CartaQuadra  := ArrayCartas[i];
                    end;
                 end;
                 ll := ll + 1;
		        end;
            kk := kk + 1;
	      end;
        jj := jj + 1
    end;
end;

function VerificaPar(Jogador: integer):Boolean;
var
i , j  : integer;
begin
DoisPares := 0;
result    := false;
jj        := 2;

    for i := 1 to 4 do
    begin
	      for j := jj to 5 do
	      begin
		        if ArrayCartas[i] = ArrayCartas[j]then
		        begin
                CartaPar  := ArrayCartas[i];
                result    := true;
                ArrayCartas[i]:= 0;
                ArrayCartas[j]:= 0;
                if Jogador = 1 then
                      DesempateParJ1 := verificaCartaMaior()
                else  DesempateParJ2 := verificaCartaMaior()
		        end;
	      end;
        jj := jj + 1
    end;
end;

function VerificaDoisPares():Boolean;
var
i , j     : integer;
ll, k , l : integer;
maior  : integer;
begin
DoisPares := 0;
result    := false;
jj        := 2;
ll        := 2;

    for i := 1 to 4 do
    begin
	      for j := jj to 5 do
	      begin
		        if ArrayCartasAux[i] = ArrayCartasAux[j]then
		        begin
               maior := ArrayCartasAux[i];
               ArrayCartasAux[i] := 0;
               ArrayCartasAux[j] := 0;

               for k := 1 to 4 do
               begin
	                  for l := ll to 5 do
	                  begin
		                  if (ArrayCartasAux[k] <> 0) and (ArrayCartasAux[l] <> 0) and (ArrayCartasAux[k] = ArrayCartasAux[l]) then
		                  begin
                          if ArrayCartasAux[k] > maior  then
                          begin
                             maior  := ArrayCartasAux[k];
                          end;
                          result    := true;
                          DoisPares := maior;
                       end;
	                end;
                ll := ll + 1
              end;
		        end;
	      end;
        jj := jj + 1
    end;
end;


function VerificaFullHouse(): Boolean;
var
l , m , mm  : Integer;
i , j , k  : integer;
begin
result     := false;
jj         := 2;
mm         := 2;
kk         := 3;

    for i := 1 to 3 do
    begin
	      for j := jj to 4 do
	      begin
            for k := kk to 5 do
	          begin
		            if (ArrayCartasAux[i] = ArrayCartasAux[j]) and (ArrayCartasAux[j] = ArrayCartasAux[k]) then
		            begin
                    CartaFullHouse    := ArrayCartasAux[i];
                    ArrayCartasAux[i] := 0;
                    ArrayCartasAux[j] := 0;
                    ArrayCartasAux[k] := 0;

                    for l := 1 to 4 do
                    begin
	                      for m := mm to 5 do
	                      begin
		                        if (ArrayCartasAux[l] <> 0) and (ArrayCartasAux[m] <> 0) and (ArrayCartasAux[l] = ArrayCartasAux[m]) then
                                result := true
                        end;
                        mm := mm + 1;
                    end;
                end;
		        end;
            kk := kk + 1;
	      end;
        jj := jj + 1;
    end;
end;

function VerificaTrinca(): Boolean;
var
i , j , k : integer;
begin
result := false;
jj     := 2;
kk     := 3;

    for i := 1 to 3 do
    begin
	      for j := jj to 4 do
	      begin
            for k := kk to 5 do
	          begin
		            if (ArrayCartas[i] = ArrayCartas[j]) and (ArrayCartas[j] = ArrayCartas[k])then
		            begin
                    CartaTrinca  := ArrayCartas[i];
                    result       := true;
                end;
		        end;
            kk := kk + 1;
	      end;
        jj := jj + 1;
    end;
end;

function VerificaRoyalFlush(n1, n2, n3, n4, n5: Integer): Boolean;
begin
     if   (ArrayCartas[1] = 9) and (VerificaFlush(n1, n2, n3, n4, n5))then
          Result := true
     else Result := false
end;

Function ValidaEntrada(C1J1, C2J1, C3J1, C4J1, C5J1, C1J2, C2J2, C3J2, C4J2, C5J2, N1J1, N2J1, N3J1, N4J1, N5J1, N1J2, N2J2, N3J2, N4J2, N5J2 : Integer): Boolean;
begin
   if (C1J1 = 0) or (C2J1 = 0) or (C3J1  = 0) or (C4J1  = 0)or (C5J1  = 0)or (C1J2 = 0) or (C2J2 = 0) or (C3J2  = 0) or (C4J2  = 0)or (C5J2  = 0)or
      (N1J1 = -1) or (N2J1 = -1) or (N3J1  = -1) or (N4J1  = -1)or (N5J1  = -1)or (N1J2 = -1) or (N2J2 = -1) or (N3J2  = -1) or (N4J2  = -1)or (N5J2  = -1)then
   begin
          ShowMessage('Informe todas os campos');
          result := false;
   end
   else
          result := true
end;

function Pontuacao(c1 , c2 , c3, c4, c5, n1, n2, n3, n4, n5 , Jogador: integer): integer;
var
resultado : integer;
begin
OrdenaCartas(c1 , c2, c3, c4, c5);
JogoGanhador := 0;

     if  VerificaRoyalFlush(n1, n2, n3, n4, n5) then
     begin
             resultado := 1000;
             JogoGanhador := 10;
     end
     else if VerificaStraightFlush(n1, n2, n3, n4, n5)then
     begin
             resultado := 900;
             JogoGanhador := 9;
     end
     else if VerificaQuadra()then
     begin
             resultado := 800;
             JogoGanhador := 8;
     end
     else if VerificaFullHouse() then
     begin
             resultado := 700;
             JogoGanhador := 7;
     end
     else if VerificaFlush(n1, n2, n3, n4, n5)then
     begin
             resultado := 600;
             JogoGanhador := 6;
     end
     else if VerificaStraight()then
     begin
             resultado := 500;
             JogoGanhador := 5;
     end
     else if VerificaTrinca() then
     begin
             resultado := 400 + CartaTrinca;
             JogoGanhador := 4;
     end
     else if VerificaDoisPares then
     begin
             resultado := 300 + DoisPares;
             JogoGanhador := 3;
     end
     else if VerificaPar(Jogador)then
     begin
             resultado := 200 + CartaPar;
             JogoGanhador := 2;
     end
     else
     begin
             resultado :=  verificaCartaMaior();
             JogoGanhador := 1;
     end;
     result := resultado;
end;

procedure TForm1.Button1Click(Sender: TObject);
    procedure VerificaJogoGanhador();
    begin
         Case (JogoGanhador) of

            10: LbJogo.caption := 'Com um Royal Flush';

            9:  LbJogo.caption := 'Com um Straight Flush';

            8:  LbJogo.caption := 'Com uma Quadra';

            7:  LbJogo.caption := 'Com um Full House';

            6:  LbJogo.caption := 'Com um Flush';

            5:  LbJogo.caption := 'Com um Straight';

            4:  LbJogo.caption := 'Com uma Trinca';

            3:  LbJogo.caption := 'Com Dois Pares';

            2:  LbJogo.caption := 'Com Par';

            1:  LbJogo.caption := 'Com a Carta Maior';

         end;
end;
var
pontosJ1 : integer;
pontosJ2 : integer;
begin
      Carta1J1 := CBCarta1Jogador1.ItemIndex;
      Carta2J1 := CBCarta2Jogador1.ItemIndex;
      Carta3J1 := CBCarta3Jogador1.ItemIndex;
      Carta4J1 := CBCarta4Jogador1.ItemIndex;
      Carta5J1 := CBCarta5Jogador1.ItemIndex;
      Carta1J2 := CBCarta1Jogador2.ItemIndex;
      Carta2J2 := CBCarta2Jogador2.ItemIndex;
      Carta3J2 := CBCarta3Jogador2.ItemIndex;
      Carta4J2 := CBCarta4Jogador2.ItemIndex;
      Carta5J2 := CBCarta5Jogador2.ItemIndex;
      NaipeC1J1 := RGNaipeCarta1Jogador1.ItemIndex;
      NaipeC2J1 := RGNaipeCarta2Jogador1.ItemIndex;
      NaipeC3J1 := RGNaipeCarta3Jogador1.ItemIndex;
      NaipeC4J1 := RGNaipeCarta4Jogador1.ItemIndex;
      NaipeC5J1 := RGNaipeCarta5Jogador1.ItemIndex;
      NaipeC1J2 := RGNaipeCarta1Jogador2.ItemIndex;
      NaipeC2J2 := RGNaipeCarta2Jogador2.ItemIndex;
      NaipeC3J2 := RGNaipeCarta3Jogador2.ItemIndex;
      NaipeC4J2 := RGNaipeCarta4Jogador2.ItemIndex;
      NaipeC5J2 := RGNaipeCarta5Jogador2.ItemIndex;

      if ValidaEntrada(Carta1J1, Carta2J1, Carta3J1, Carta4J1, Carta5J1, Carta1J2, Carta2J2, Carta3J2, Carta4J2, Carta5J2, NaipeC1J1, NaipeC2J1, NaipeC3J1, NaipeC4J1, NaipeC5J1, NaipeC1J2, NaipeC2J2, NaipeC3J2, NaipeC4J2, NaipeC5J2)then
      begin
          pontosJ1 :=  Pontuacao(Carta1J1, Carta2J1, Carta3J1, Carta4J1, Carta5J1, NaipeC1J1, NaipeC2J1, NaipeC3J1, NaipeC4J1, NaipeC5J1 , 1);
          pontosJ2 :=  Pontuacao(Carta1J2, Carta2J2, Carta3J2, Carta4J2, Carta5J2, NaipeC1J2, NaipeC2J2, NaipeC3J2, NaipeC4J2, NaipeC5J2 , 2);
              if  pontosJ1 > pontosJ2 then
              begin
                        LbResultado.caption := 'Jogador 1 foi o vencedor';
                        VerificaJogoGanhador();
              end
              else if pontosJ1 = pontosJ2 then
              begin
                   if DesempateParJ1 > DesempateParJ2 then
                        LbResultado.caption := 'Jogador 1 foi o vencedor';
                        VerificaJogoGanhador();
              end
              else if pontosJ1 < pontosJ2 then
              begin
                        LbResultado.Caption := 'Jogador 2 foi o vencedor';
                        VerificaJogoGanhador();
              end;
      end;
end;

end.
