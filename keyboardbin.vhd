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
	component LED1port is
		port(
		entk01, entk02, entk04, entk08, entk16 : in bit;
		saida : out bit
		);
	end component LED1port;

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
			  
	A_LED1 : LED1port port map(entk01 => Ak01, entk02 => Ak02, entk04 => Ak04, entk08 => Ak08, entk16 => AK16,  saida => AL1);
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
	
	
	-- PRIMEIRA TELA ( B ) --
	-- entradas : Bk16, Bk08, Bk04, Bk02, Bk01 --
	BL0 <= ((not(Bk04) and Bk16 and Bk08) or
			  (not(Bk08 or Bk04 or Bk02) and Bk01) or
			  (not(Bk08 or Bk01) and Bk16 and Bk02) or
			  
			  (not(Bk16 or Bk08 or Bk02 or Bk01) and Bk04) or
			  (not(Bk16 or Bk04) and Bk08 and Bk02 and Bk01) or
			  (not(Bk16 or Bk02) and Bk08 and Bk04 and Bk01) or
			  
			  (not(Bk08 or Bk04 or Bk02 or Bk01) and Bk16) or
			  (not(Bk08) and Bk16 and Bk04 and Bk02 and Bk01));
			  
	B_LED1 : LED1port port map(entk01 => Bk01, entk02 => Bk02, entk04 => Bk04, entk08 => Bk08, entk16 => BK16,  saida => BL1);

	BL2 <= ((not(Bk16 or Bk01) and Bk08 and Bk04) or
			  (not(Bk08 or Bk01) and Bk16 and Bk04) or
			  (not(Bk16 or Bk08 or Bk04 or Bk02) and Bk01) or
			 
			  (not(Bk16 or Bk08 or Bk04 or Bk01) and Bk02) or
			  (not(Bk16) and Bk08 and Bk04 and Bk02 and Bk01) or
			  (not(Bk08 or Bk04 or Bk01) and Bk16 and Bk02) or
			  (not(Bk04) and Bk16 and Bk08 and Bk02 and Bk01));
	
	BL3 <= ((not(Bk16) and Bk04 and Bk02 and Bk01) or
			  (not(Bk08 or Bk02) and Bk16 and Bk04) or
			  (not(Bk16 or Bk08 or Bk04 or Bk02) and Bk01) or
			 
			  (not(Bk16 or Bk08 or Bk02 or Bk01) and Bk04) or
			  (not(Bk16 or Bk04 or Bk01) and Bk08 and Bk02) or
			  (not(Bk08 or Bk04 or Bk02 or Bk01) and Bk16) or
			  
			  (not(Bk08 or Bk04) and Bk16 and Bk02 and Bk01) or
			  (not(Bk08 or Bk01) and Bk16 and Bk04 and Bk02) or
			  (not(Bk04 or Bk02) and Bk16 and Bk08 and Bk01));
			  
	BL4 <= ((not(Bk16 or Bk08) and Bk02 and Bk01) or
			  (not(Bk16 or Bk08 or Bk02) and Bk04) or
			  (not(Bk04) and Bk16 and Bk08 and Bk02) or
			 
			  (not(Bk16 or Bk04 or Bk02) and Bk08 and Bk01) or
			  (not(Bk08 or Bk02) and Bk16 and Bk04 and Bk01));
			  
	BL5 <= ((not(Bk16 or Bk08 or Bk04) and Bk02) or
			  (not(Bk08) and Bk16 and Bk04 and Bk02) or
			  
			  (not(Bk16 or Bk08) and Bk04 and Bk02 and Bk01) or
			  (not(Bk16 or Bk02) and Bk08 and Bk04 and Bk01) or
			  (not(Bk08 or Bk04 or Bk02) and Bk16 and Bk01));
			  
	BL6 <= ((not(Bk16 or Bk08 or Bk04 or Bk02)) or
			  (not(Bk08) and Bk04 and Bk02 and Bk01) or
			  (not(Bk08 or Bk04) and Bk16 and Bk02) or
			  
			  (not(Bk04 or Bk02 or Bk01) and Bk16 and Bk08) or
			  (not(Bk04) and Bk16 and Bk08 and Bk02 and Bk01) or
			  (not(Bk16 or Bk02 or Bk01) and Bk08 and Bk04) or
			  
			  (not(Bk08 or Bk04 or Bk02) and Bk16 and Bk01));
	-- FIM DA SEGUNDA TELA ( B ) --
	
end architecture main;
	