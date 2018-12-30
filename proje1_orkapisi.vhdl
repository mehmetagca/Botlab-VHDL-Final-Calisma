-------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity orkapisi is
port(or_g1 : in STD_LOGIC;
     or_g2 : in STD_LOGIC;
     or_cikis : out STD_LOGIC);
end orkapisi;

architecture Behavioral of orkapisi is
begin
process(or_g1, or_g2)
begin
or_cikis <= or_g1 or or_g2;
end process;
end Behavioral;
---------
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity andkapisi is
     port(and_g1: in STD_LOGIC;
          and_g2: in STD_LOGIC;
          and_cikis: out STD_LOGIC);
end andkapisi;

architecture Behavioral of andkapisi is
begin
     process(and_g1, and_g2)
     begin
     and_cikis <= and_g2 and and_g2;
     end process;
end Behavioral;
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity devre is
port(A: in STD_LOGIC;
     B: in STD_LOGIC;
     C: out STD_LOGIC);
end devre;

architecture Behavioral of devre is
component orkapisi is
port(or_g1 : in STD_LOGIC;
     or_g2 : in STD_LOGIC;
     or_cikis : out STD_LOGIC);
end component;

component andkapisi is
port(and_g1: in STD_LOGIC;
     and_g2: in STD_LOGIC;
     and_cikis: out STD_LOGIC);
end component;

--Signals
Signal arakablo1 : STD_LOGIC;
Signal arakablo2 : STD_LOGIC;

begin
blok1: orkapisi port map(or_g1 => A, or_g2 => B, or_cikis => arakablo1);
blok2: orkapisi port map(or_g1 => B, or_g2 => A, or_cikis => arakablo2);
blok3: andkapisi port map(and_g1 => arakablo1, and_g2 => arakablo2, and_cikis => C);
end Behavioral;
---------
