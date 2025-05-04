-- Этот файл содержит описание МУУ в виде автомата МИЛИ, предназначенного для выполнения одной операции умножения

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mealy_state_machine is
generic (n:integer:=4);     -- n параметр, задает разрядность операндов
	port
	(
		clk		 : in	std_logic; -- тактовый сигнал
		set 		 : in	std_logic; --  сигнал начальной установки
		x	 		 : in	std_logic_vector(2 downto 0);-- логические условия f3,f2,f1
		sno		 : in	std_logic; -- сигнал начала операции
		sko	 	 : out	std_logic; -- сигнал конца операции
		y	 		 : out	std_logic_vector(10 downto 1); -- управляющие сигналы для блока операций
		-- следующие сигналы используются для отладки
		incr_i	 : buffer std_logic;
		s_out		 : out   integer range 0 to 2; --  отладочный выход для наблюдения состояний
		next_state_out : out   integer range 0 to 2 --  отладочный выход для наблюдения состояний
	);

end entity;

architecture rtl of mealy_state_machine is

	type state_type is (s0, s1, s2); -- определяем состояния МУУ

	signal next_state, state : state_type; -- следующее состояние, текущее состояние
	signal i : integer range 1 to n-1 ; -- счетчик разрядов множителя

begin

TS: process (clk,set) -- этот процесс определяет текущее состояние МУУ
	 begin
		if set = '1' then
			state <= s0;
		elsif (rising_edge(clk)) then -- по положительному фронту переключаются состояния
			state <= next_state;			
		end if;
	 end process;
	 
NS: process (state,sno,x,i) -- этот процесс определяет следующее состояние МУУ, управляющие сигналы для БО
	 begin

			case state is
				when s0=> -- переходы из s0
				 
					if (sno = '1') then
						next_state <= s1; y<="0111000111"; -- если есть сигнал начала операции
					else
						next_state <= s0; y<="0000000000"; -- иначе состояние не меняется
					end if;
				when s1=>
				   
					next_state <= s2; -- из s1 всегда переходим в s2
					if x(1 downto 0) = "10" then
						y<="0101101000"; -- прибавляем +RA  													
					elsif x(1 downto 0)="01" then
						y<="0101110000"; -- прибавляем -RA
					else 
						y<="0101100000"; -- прибавляем ноль
					end if;
				when s2=>
					if i = n-1 then
						next_state <= s0; y<="0000000000"; -- формируем сигнал конца операции
					else
						next_state <= s1; y<="0001000100";  -- иначе сдвиг rr, сдвиг RB
					end if;

			end case;			
	end process;
	
	sko<='1' when state=s2 and i=n-1 else -- формирование sko
			'0';
	incr_i<='1' when state=s2 and i/=n-1 else --инкремент i
			'0';
count_i:   process (sno, clk) -- этот процесс определяет поведение счетчика i
	
	begin
		if (sno='1') then i<=1; --устанавливаем в начальное состояние
		elsif clk'event and clk='1' then 
		  if (incr_i='1') then i<=i+1; -- инкремент счетчика
		  end if;
		 end if;
	end process;
	--  отладочный выход для наблюдения текущего состояния 
	s_out<=0 when state=s0 else
			 1 when state=s1 else					
			 2;
	--  отладочный выход для наблюдения следующего состояния
	next_state_out<=0 when next_state=s0 else
						 1 when next_state=s1 else					
						 2;

end rtl;
