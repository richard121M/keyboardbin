library ieee;
use ieee.std_logic_1164.all;

entity LED2port is
	port(
		entk01, entk02, entk04, entk08, entk16 : in bit;
		saida : out bit
	);
end LED2port;

architecture behav of LED2port is
	begin
	saida <=  ((not(entk16 or entk01) and entk08 and entk04) or
			  (not(entk08 or entk01) and entk16 and entk04) or
			  (not(entk16 or entk08 or entk04 or entk02) and entk01) or
			 
			  (not(entk16 or entk08 or entk04 or entk01) and entk02) or
			  (not(entk16) and entk08 and entk04 and entk02 and entk01) or
			  (not(entk08 or entk04 or entk01) and entk16 and entk02) or
			  (not(entk04) and entk16 and entk08 and entk02 and entk01));
end architecture behav;
	