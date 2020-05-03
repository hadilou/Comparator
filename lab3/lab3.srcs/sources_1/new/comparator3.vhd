----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/26/2019 06:26:55 PM
-- Design Name: 
-- Module Name: comparator - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator3 is
    Port ( A : in STD_LOGIC_VECTOR (1 downto 0);
           B : in STD_LOGIC_VECTOR (1 downto 0);
           eq_o : out STD_LOGIC;
           gt_o : out STD_LOGIC;
           lt_o : out STD_LOGIC);
end comparator3;

architecture Behavioral of comparator3 is

signal tmp1,tmp2,tmp3,tmp4,tmp5, tmp6, tmp7, tmp8: std_logic; 

begin

 -- equal case
 tmp1 <= A(1) xnor B(1);
 tmp2 <= A(0) xnor B(0);
 eq_o <= tmp1 and tmp2;
 -- less than case
 tmp3 <= (not A(0)) and (not A(1)) and B(0);
 tmp4 <= (not A(1)) and B(1);
 tmp5 <= (not A(0)) and B(1) and B(0);
 lt_o <= tmp3 or tmp4 or tmp5;
 -- greater than case
 tmp6 <= (not B(0)) and (not B(1)) and A(0);
 tmp7 <= (not B(1)) and A(1);
 tmp8 <= (not B(0)) and A(1) and A(0);
 gt_o <= tmp6 or tmp7 or tmp8;


   
                
    



    
end Behavioral;
