
-- b02_tb testbench
-- testbench for b02 entity
library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

-- name of the testbench
entity b02_tb is
end entity;

architecture TESTBENCH of b02_tb is

    -- whole component
    component b02 is
    port(reset : in bit;
    	clock : in bit;
    	linea : in bit;
    	u     : out bit
        );
    end component;

    -- signals
    signal reset : bit;
    signal clock : bit;
    signal linea : bit;
    signal u     : bit;
	
begin

    -- whole instance
    i_b02 : b02
    port map(
            reset => reset,
            clock => clock,
            linea => linea,
            u     => u
    );

    clk_sig : process
    begin 
	clock <= '1';        
	wait for 5 ns;
	clock <= '0';
	wait for 5 ns;
    end process;

    test_sig : process
    begin
        reset <= '0';
        wait for 5 ns;
        reset <= '1';
        wait for 5 ns;
    end process;

end architecture;