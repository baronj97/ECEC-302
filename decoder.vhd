library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder is
port (x : in std_logic_vector(3 downto 0);
	en : in std_logic;
	z : out std_logic_vector(15 downto 0));
end decoder;

architecture Behavioral of decoder is
begin

process(x, en)
begin
if en = '0' then
	z <= (others => '0');
else
case x is  
    when "0000" => Z <= (0 => '1', others => '0');
    when "0001" => Z <= (1 => '1', others => '0');
    when "0010" => Z <= (2 => '1', others => '0');
    when "0011" => Z <= (3 => '1', others => '0');
    when "0100" => Z <= (4 => '1', others => '0');
    when "0101" => Z <= (5 => '1', others => '0');
    when "0110" => Z <= (6 => '1', others => '0');
    when "0111" => Z <= (7 => '1', others => '0');
    when "1000" => Z <= (8 => '1', others => '0');
    when "1001" => Z <= (9 => '1', others => '0');
    when "1010" => Z <= (10 => '1', others => '0');
    when "1011" => Z <= (11 => '1', others => '0');
    when "1100" => Z <= (12 => '1', others => '0');
    when "1101" => Z <= (13 => '1', others => '0');
    when "1110" => Z <= (14 => '1', others => '0');
    when "1111" => Z <= (15 => '1', others => '0');
end case;
end if;
end process;
end Behavioral;