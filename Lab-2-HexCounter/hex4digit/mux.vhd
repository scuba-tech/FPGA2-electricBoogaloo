----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:51 11/08/2018 
-- Design Name: 
-- Module Name:    mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mymux is
Port( sel : in STD_LOGIC_VECTOR (1 downto 0);
  A: in STD_LOGIC_VECTOR (15 downto 0);
  B : out STD_LOGIC_VECTOR (3 downto 0));
end mymux;

architecture Behavioral of mymux is

begin
with sel select
B    <= A( 3 downto 0) when "00",
		  A( 7 downto 4) when "01",
		  A(11 downto 8) when "10",
		  A(15 downto 12) when "11",
		  (others => '0') when others;

end Behavioral;

