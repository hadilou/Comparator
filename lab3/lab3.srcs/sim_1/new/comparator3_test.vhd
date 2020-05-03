----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/26/2019 06:32:13 PM
-- Design Name: 
-- Module Name: comparator_test - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following ibrary declaration if using
-- arithmetic functions wit Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator_test3 is
--  Port ( );
end comparator_test3;

architecture Behavioral of comparator_test3 is
    component comparator3
    PORT(
    A: IN std_logic_vector(1 downto 0);
    B: IN std_logic_vector(1 downto 0);
    eq_o: OUT std_logic;
    gt_o: OUT std_logic;
    lt_o: OUT std_logic);
    END COMPONENT;
   
   signal A : std_logic_vector(1 downto 0) := (others => '0');
   signal B : std_logic_vector(1 downto 0) := (others => '0');
  
   signal lt_o : std_logic;
   signal eq_o : std_logic;
   signal gt_o : std_logic;
    
begin
uut: comparator3 PORT MAP (
          A => A,
          B => B,
          lt_o => lt_o,
          eq_o => eq_o,
          gt_o => gt_o
        );
        stim_proc: process
   begin 
  
   A <= "00";
   B <= "00";
   wait for 20 ns;
   A <= "00";
   B <= "01";
   wait for 20 ns;
   A <= "00";
   B <= "10";
   wait for 20 ns;
   A <= "00";
   B <= "11";
   wait for 20 ns;
   
   
   A <= "01";
   B <= "00";
   wait for 20 ns;
   A <= "01";
   B <= "01";
   wait for 20 ns;
   A <= "01";
   B <= "10";
   wait for 20 ns;
   A <= "01";
   B <= "11";
   wait for 20 ns;
   
   A <= "10";
   B <= "00";
   wait for 20 ns;
   A <= "10";
   B <= "01";
   wait for 20 ns;
   A <= "10";
   B <= "10";
   wait for 20 ns;
   A <= "10";
   B <= "11";
   wait for 20 ns;
   
   
   A <= "11";
   B <= "00";
   wait for 20 ns;
   A <= "11";
   B <= "01";
   wait for 20 ns;
   A <= "11";
   B <= "10";
   wait for 20 ns;
   A <= "11";
   B <= "11";
   wait for 20 ns;
   
   wait ;
     
   end process ;

end Behavioral;
