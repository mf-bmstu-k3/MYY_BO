-- Этот файл содержит описание МУУ в виде автомата МИЛИ, предназначенного для выполнения одной операции умножения


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity YA_smf is 

	port
	(
		clk		 : in	std_logic; -- тактовый сигнал
		set 		 : in	std_logic; --  сигнал начальной установки
		x	 		 : in	std_logic_vector(2 downto 0);-- логические условия
		sno		 : in	std_logic; -- сигнал начала операции
		sko	 	 : out	std_logic; -- сигнал конца операции
		y	 		 : out	std_logic_vector(10 downto 1) -- управляющие сигналы для блока операций
		-- следующие сигналы используются для отладки
		-- incr_i	 : buffer std_logic;
		-- s_out		 : out   integer range 0 to 3; --  отладочный выход для наблюдения состояний
		-- next_state_out : out   integer range 0 to 3 --  отладочный выход для наблюдения состояний
	);

end entity;
architecture struct of YA_smf  is 
COMPONENT SM3  -- декларация компонента 
	PORT
	(
		reset		:	 IN STD_LOGIC;
		clock		:	 IN STD_LOGIC;
		x			:	 IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		sno		:	 IN STD_LOGIC;
		i			:	 IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		y			:	 OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		sko		:	 OUT STD_LOGIC;
		incr_i	:	 OUT STD_LOGIC
	);
END COMPONENT;
-- декларация сигналов
signal i : STD_LOGIC_VECTOR(1 DOWNTO 0) ; -- счетчик разрядов множителя
signal incr_i: STD_LOGIC; -- сигнал разрешения увеличения счетчика
begin
inst1: 		 SM3 port map (set,clk,x,sno,i,y,sko,incr_i); -- карта портов подключаемого компонента SM3.
count_i:   process (sno, clk) -- этот процесс определяет поведение счетчика i
	
	begin
		if (sno='1') then i<="01"; --устанавливаем в начальное состояние
		elsif clk'event and clk='1' then 
		  if (incr_i='1') then i<=i+1; -- инкремент счетчика
		  end if;
		 end if;
	end process;
	end struct;