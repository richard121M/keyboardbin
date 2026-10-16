-- bibliotecas e pacotes
library ieee;
use ieee.std_logic_1164.all;

-- entidade

entity keyboardbin is
	port(
		-- Grupo de Alavancas Binarias --
		-- Grupo A --
		Ak01, Ak02, Ak04, Ak08, Ak16 : in bit;
		-- Grupo B --
		Bk01, Bk02, Bk04, Bk08, Bk16 : in bit;
		
		
		-- Paineis de LED --
		-- Painel A --
		AL0 , AL1, AL2, AL3, AL4, AL5, AL6 : out bit;
		-- Painel B --
		BL0 , BL1, BL2, BL3, BL4, BL5, BL6 : out bit
	);
end keyboardbin;

-- Arquitetura
architecture main of keyboardbin is
	begin
	-- PRIMEIRA TELA ( A ) --
	-- entradas : Ak16, Ak08, Ak04, Ak02, Ak01 --
	AL0 <= ((not(Ak04) and Ak16 and Ak08) or
			  (not(Ak08 or Ak04 or Ak02) and Ak01) or
			  (not(Ak08 or Ak01) and Ak16 and Ak02) or
			  
			  (not(Ak16 or Ak08 or Ak02 or Ak01) and Ak04) or
			  (not(Ak16 or Ak04) and Ak08 and Ak02 and Ak01) or
			  (not(Ak16 or Ak02) and Ak08 and Ak04 and Ak01) or
			  
			  (not(Ak08 or Ak04 or Ak02 or Ak01) and Ak16) or
			  (not(Ak08) and Ak16 and Ak04 and Ak02 and Ak01));
			  
	AL1 <= ((not(Ak16) and Ak08 and Ak02 and Ak01) or
			  (not(Ak16 or Ak08 or Ak02) and Ak01) or
			  (not(Ak08) and Ak16 and Ak04 and Ak02) or
			 
			  (not(Ak08 or Ak04 or Ak01) and Ak16) or
			  (not(Ak16 or Ak01) and Ak08 and Ak04) or
			  (not(Ak16 or Ak08 or Ak01) and Ak04 and Ak02));

	AL2 <= ((not(Ak16 or Ak01) and Ak08 and Ak04) or
			  (not(Ak08 or Ak01) and Ak16 and Ak04) or
			  (not(Ak16 or Ak08 or Ak04 or Ak02) and Ak01) or
			 
			  (not(Ak16 or Ak08 or Ak04 or Ak01) and Ak02) or
			  (not(Ak16) and Ak08 and Ak04 and Ak02 and Ak01) or
			  (not(Ak08 or Ak04 or Ak01) and Ak16 and Ak02) or
			  (not(Ak04) and Ak16 and Ak08 and Ak02 and Ak01));
	
	AL3 <= ((not(Ak16) and Ak04 and Ak02 and Ak01) or
			  (not(Ak08 or Ak02) and Ak16 and Ak04) or
			  (not(Ak16 or Ak08 or Ak04 or Ak02) and Ak01) or
			 
			  (not(Ak16 or Ak08 or Ak02 or Ak01) and Ak04) or
			  (not(Ak16 or Ak04 or Ak01) and Ak08 and Ak02) or
			  (not(Ak08 or Ak04 or Ak02 or Ak01) and Ak16) or
			  
			  (not(Ak08 or Ak04) and Ak16 and Ak02 and Ak01) or
			  (not(Ak08 or Ak01) and Ak16 and Ak04 and Ak02) or
			  (not(Ak04 or Ak02) and Ak16 and Ak08 and Ak01));
			  
	AL4 <= ((not(Ak16 or Ak08) and Ak02 and Ak01) or
			  (not(Ak16 or Ak08 or Ak02) and Ak04) or
			  (not(Ak04) and Ak16 and Ak08 and Ak02) or
			 
			  (not(Ak16 or Ak04 or Ak02) and Ak08 and Ak01) or
			  (not(Ak08 or Ak02) and Ak16 and Ak04 and Ak01));
			  
	AL5 <= ((not(Ak16 or Ak08 or Ak04) and Ak02) or
			  (not(Ak08) and Ak16 and Ak04 and Ak02) or
			  
			  (not(Ak16 or Ak08) and Ak04 and Ak02 and Ak01) or
			  (not(Ak16 or Ak02) and Ak08 and Ak04 and Ak01) or
			  (not(Ak08 or Ak04 or Ak02) and Ak16 and Ak01));
			  
	AL6 <= ((not(Ak16 or Ak08 or Ak04 or Ak02)) or
			  (not(Ak08) and Ak04 and Ak02 and Ak01) or
			  (not(Ak08 or Ak04) and Ak16 and Ak02) or
			  
			  (not(Ak04 or Ak02 or Ak01) and Ak16 and Ak08) or
			  (not(Ak04) and Ak16 and Ak08 and Ak02 and Ak01) or
			  (not(Ak16 or Ak02 or Ak01) and Ak08 and Ak04) or
			  
			  (not(Ak08 or Ak04 or Ak02) and Ak16 and Ak01));
	-- FIM DA PRIMEITA TELA ( A ) --
end architecture main;
	