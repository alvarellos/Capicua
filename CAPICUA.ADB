with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;



-- Problema que decide si un número es capicúa

procedure Capicua is


-- Auxiliares

   Resultado1 : Natural;
   function  Potencia10 (M : Natural) return Natural is
   -- Pre : cierto
   -- Post : "Devuelve un numero como potencia de base 10"
   begin
      if M < 10 then Resultado1 := 1;
      else Resultado1 := 10 * Potencia10 (M / 10);
      end if;
      return Resultado1;
   end Potencia10;


   Resultado2 : Natural;
   function InvNum (N : Natural) return Natural is
   -- Pre : cierto
   -- Post : "devuelve el numero invertido"
   begin
      if N = 0 then Resultado2 := 0;
      else Resultado2 := (N mod 10) * Potencia10 (N) + InvNum (N / 10);
      end if;
      return Resultado2;
   end InvNum;
   

function EsCapicua (K : Natural) return Boolean is
-- Pre : cierto
-- Post : "Decide si un número es capicúa o no lo es"
begin
   if k - InvNum (K) = 0
   then return True;
   else return False;
   end if;
end EsCapicua;
---------------------

S : constant Natural := 5589;

begin 

if EsCapicua (S) then Put ("El numero pedido es capicua ");
else Put ("El numero pedido no es capicua ");
end if;
   
end Capicua;
          