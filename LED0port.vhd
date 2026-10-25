library ieee;
use ieee.std_logic_1164.all;

entity LED0port is
	port(
		entk01, entk02, entk04, entk08, entk16 : in bit;
		saida : out bit
	);
end LED0port;

architecture behav of LED0port is
	begin
	saida <=  ((not(entk04) and entk16 and entk08) or
			  (not(entk08 or entk04 or entk02) and entk01) or
			  (not(entk08 or entk01) and entk16 and entk02) or
			  
			  (not(entk16 or entk08 or entk02 or entk01) and entk04) or
			  (not(entk16 or entk04) and entk08 and entk02 and entk01) or
			  (not(entk16 or entk02) and entk08 and entk04 and entk01) or
			  
			  (not(entk08 or entk04 or entk02 or entk01) and entk16) or
			  (not(entk08) and entk16 and entk04 and entk02 and entk01));
end architecture behav;
	