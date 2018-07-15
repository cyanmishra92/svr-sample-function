-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sin_or_cos_doublefYi_rom is 
    generic(
             DWIDTH     : integer := 44; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of sin_or_cos_doublefYi_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10110001000010110000110011011001000001001011", 
    1 => "10110001000010110110111001000001101000101110", 
    2 => "10110001000011001001001001111010100111101110", 
    3 => "10110001000011100111100110000001001001111010", 
    4 => "10110001000100010010001101010000100001100000", 
    5 => "10110001000101001000111111100010001011110110", 
    6 => "10110001000110001011111100101101101010010100", 
    7 => "10110001000111011011000100101000101001000001", 
    8 => "10110001001000110110010111000110111011011101", 
    9 => "10110001001010011101110011111010011011111010", 
    10 => "10110001001100010001011010110011001101110100", 
    11 => "10110001001110010001001011011111011100110101", 
    12 => "10110001010000011101000101101011011010010010", 
    13 => "10110001010010110101001001000001100001111011", 
    14 => "10110001010101011001010101001010011000000111", 
    15 => "10110001011000001001101001101100100110111001", 
    16 => "10110001011011000110000110001101000011110110", 
    17 => "10110001011110001110101010001110101000111100", 
    18 => "10110001100001100011010101010010011100100000", 
    19 => "10110001100101000100000110110111101010111100", 
    20 => "10110001101000110000111110011011101001001110", 
    21 => "10110001101100101001111011011001110110011101", 
    22 => "10110001110000101110111101001011111001001111", 
    23 => "10110001110101000000000011001001100000110110", 
    24 => "10110001111001011101001100101000100110110111", 
    25 => "10110001111110000110011000111101001100000110", 
    26 => "10110010000010111011100111011001011100010010", 
    27 => "10110010000111111100110111001101101011100001", 
    28 => "10110010001101001010000111101000010110010101", 
    29 => "10110010010010100011010111110110000011001100", 
    30 => "10110010011000001000100111000001100101001011", 
    31 => "10110010011101111001110100010011110011001101", 
    32 => "10110010100011110110111110110011110011110100", 
    33 => "10110010101010000000000101100110110011111100", 
    34 => "10110010110000010101000111110000001100000110", 
    35 => "10110010110110110110000100010001011111000010", 
    36 => "10110010111101100010111010001010011001011111", 
    37 => "10110011000100011011101000011000110001110010", 
    38 => "10110011001011100000001101111000101011111100", 
    39 => "10110011010010110000101001100100010100111101", 
    40 => "10110011011010001100111010010100000011110110", 
    41 => "10110011100001110100111110111110011101010110", 
    42 => "10110011101001101000110110011000010000001010", 
    43 => "10110011110001101000011111010100010101001111", 
    44 => "10110011111001110011111000100011110101101011", 
    45 => "10110100000010001011000000110110000001010100", 
    46 => "10110100001010101101110110111000011000101100", 
    47 => "10110100010011011100011001010110100100110110", 
    48 => "10110100011100010110100110111010011110001111", 
    49 => "10110100100101011100011110001100001000111000", 
    50 => "10110100101110101101111101110001110101111111", 
    51 => "10110100111000001011000100010000000100011001", 
    52 => "10110101000001110011110000001001100000001000", 
    53 => "10110101001011100111111111111111000001110000", 
    54 => "10110101010101100111110010001111110001111101", 
    55 => "10110101011111110011000101011001000101011001", 
    56 => "10110101101010001001110111110110100000100111", 
    57 => "10110101110100101100001000000001110101111110", 
    58 => "10110101111111011001110100010011000110010111", 
    59 => "10110110001010010010111011000000100011010001", 
    60 => "10110110010101010111011010011110101011010110", 
    61 => "10110110100000100111010001000000001111111101", 
    62 => "10110110101100000010011100110110001110011001", 
    63 => "10110110110111101000111100001111110111111011", 
    64 => "10110111000011011010101101011010101010110001", 
    65 => "10110111001111010111101110100010011000111011", 
    66 => "10110111011011011111111101110001000011011100", 
    67 => "10110111100111110011011001001110111101110010", 
    68 => "10110111110100010001111111000010101011001100", 
    69 => "10111000000000111011101101010001000010011110", 
    70 => "10111000001101110000100001111101001100101011", 
    71 => "10111000011010110000011011001000100011001010", 
    72 => "10111000100111111011010110110010110101111011", 
    73 => "10111000110101010001010010111010000010010110", 
    74 => "10111001000010110010001101011010011111100011", 
    75 => "10111001010000011110000100001110110010111101", 
    76 => "10111001011110010100110101001111111000110111", 
    77 => "10111001101100010110011110010101000010001001", 
    78 => "10111001111010100010111101010011110010011101", 
    79 => "10111010001000111010010000000000000011010110", 
    80 => "10111010010111011100010100001100000100111111", 
    81 => "10111010100110001001000111101000011010110111", 
    82 => "10111010110101000000101000000011111111111011", 
    83 => "10111011000100000010110011001100000101001111", 
    84 => "10111011010011001111100110101100010011001010", 
    85 => "10111011100010100111000000001110100111000001", 
    86 => "10111011110010001000111101011011011000111010", 
    87 => "10111100000001110101011011111001010101101110", 
    88 => "10111100010001101100011001001101100100010001", 
    89 => "10111100100001101101110010111011100011001110", 
    90 => "10111100110001111001100110100101001001110111", 
    91 => "10111101000010001111110001101010101001111101", 
    92 => "10111101010010110000010001101010101100111001", 
    93 => "10111101100011011011000100000010011001011111", 
    94 => "10111101110100010000000110001101001101010000", 
    95 => "10111110000101001111010101100101000011100100", 
    96 => "10111110010110011000101111100010010000111100", 
    97 => "10111110100111101100010001011011100110000110", 
    98 => "10111110111001001001111000100110010001101010", 
    99 => "10111111001010110001100010010101111100000010", 
    100 => "10111111011100100011001011111100101100110011", 
    101 => "10111111101110011110110010101011000110110111", 
    102 => "11000000000000100100010011110000001100010010", 
    103 => "11000000010010110011101100011001011100110110", 
    104 => "11000000100101001100111001110010110110100110", 
    105 => "11000000110111101111111001000110110111100000", 
    106 => "11000001001010011100100111011110011100001000", 
    107 => "11000001011101010011000010000001000001111010", 
    108 => "11000001110000010011000101110100100101111011", 
    109 => "11000010000011011100101111111101100100110011", 
    110 => "11000010010110101111111101011110111111011001", 
    111 => "11000010101010001100101011011010010110000110", 
    112 => "11000010111101110010110110101111101101000010", 
    113 => "11000011010001100010011100011101101000011101", 
    114 => "11000011100101011011011001100001010001010011", 
    115 => "11000011111001011101101010110110010110000010", 
    116 => "11000100001101101001001101010111000100100101", 
    117 => "11000100100001111101111101111100010100000111", 
    118 => "11000100110110011011111001011101011101101000", 
    119 => "11000101001011000010111100110000100001001000", 
    120 => "11000101011111110011000100101010000011100101", 
    121 => "11000101110100101100001101111101010001110000", 
    122 => "11000110001001101110010101011011111110001111", 
    123 => "11000110011110111001010111110110100010101011", 
    124 => "11000110110100001101010001111100000010100101", 
    125 => "11000111001001101010000000011010000111111010", 
    126 => "11000111011111001111011111111101000111001100", 
    127 => "11000111110100111101101101001111111101010000", 
    128 => "11101011010101000100001100011001110110100010", 
    129 => "11101011010101000101001001100110111000111110", 
    130 => "11101011010101001000000001001101111010101110", 
    131 => "11101011010101001100110011001110100110100000", 
    132 => "11101011010101010011011111101000011011001001", 
    133 => "11101011010101011100000110011010101001100101", 
    134 => "11101011010101100110100111100100010101010011", 
    135 => "11101011010101110011000011000100010011010010", 
    136 => "11101011010110000001011000111001001101010011", 
    137 => "11101011010110010001101001000001011100100011", 
    138 => "11101011010110100011110011011011001111110100", 
    139 => "11101011010110110111111000000100100110001110", 
    140 => "11101011010111001101110110111011010011011101", 
    141 => "11101011010111100101101111111100111010111110", 
    142 => "11101011010111111111100011000110110101011011", 
    143 => "11101011011000011011010000010110001100110011", 
    144 => "11101011011000111000110111100111111101101001", 
    145 => "11101011011001011000011000111000110110111101", 
    146 => "11101011011001111001110100000101011010111110", 
    147 => "11101011011010011101001001001001111101101010", 
    148 => "11101011011011000010011000000010100110110000", 
    149 => "11101011011011101001100000101011001110110100", 
    150 => "11101011011100010010100010111111100010110100", 
    151 => "11101011011100111101011110111011000001110011", 
    152 => "11101011011101101010010100011000111011010001", 
    153 => "11101011011110011001000011010100010101001011", 
    154 => "11101011011111001001101011101000000101001001", 
    155 => "11101011011111111100001101001110110101101101", 
    156 => "11101011100000110000101000000011000000111110", 
    157 => "11101011100001100110111011111110110110100000", 
    158 => "11101011100010011111001000111100010111010011", 
    159 => "11101011100011011001001110110101010111111001", 
    160 => "11101011100100010101001101100011011101111010", 
    161 => "11101011100101010011000101000000000011001101", 
    162 => "11101011100110010010110101000100010100011111", 
    163 => "11101011100111010100011101101001001111010001", 
    164 => "11101011101000010111111110100111100101100111", 
    165 => "11101011101001011101010111110111111011010011", 
    166 => "11101011101010100100101001010010101000100111", 
    167 => "11101011101011101101110010101111110110101011", 
    168 => "11101011101100111000110100000111100010010010", 
    169 => "11101011101110000101101101010001011010010001", 
    170 => "11101011101111010100011110000101000001001000", 
    171 => "11101011110000100101000110011001101101010100", 
    172 => "11101011110001110111100110000110100100110010", 
    173 => "11101011110011001011111101000010100011011001", 
    174 => "11101011110100100010001011000100010111011110", 
    175 => "11101011110101111010010000000010100001000101", 
    176 => "11101011110111010100001011110011010011001010", 
    177 => "11101011111000101111111110001100110101100011", 
    178 => "11101011111010001101100111000101000001010000", 
    179 => "11101011111011101101000110010001100010101101", 
    180 => "11101011111101001110011011100111111001100111", 
    181 => "11101011111110110001100110111101011000000010", 
    182 => "11101100000000010110101000000111000100000110", 
    183 => "11101100000001111101011110111001110110101001", 
    184 => "11101100000011100110001011001010011010111011", 
    185 => "11101100000101010000101100101101010000000010", 
    186 => "11101100000110111101000011010110100111110001", 
    187 => "11101100001000101011001110111010100111110010", 
    188 => "11101100001010011011001111001101001000001000", 
    189 => "11101100001100001101000100000001110011010001", 
    190 => "11101100001110000000101101001100001010001010", 
    191 => "11101100001111110110001010011111011100100110", 
    192 => "11101100010001101101011011101110110001001011", 
    193 => "11101100010011100110100000101101000000110000", 
    194 => "11101100010101100001011001001100110110000101", 
    195 => "11101100010111011110000101000000110000010100", 
    196 => "11101100011001011100100011111011000011100010", 
    197 => "11101100011011011100110101101101110011011010", 
    198 => "11101100011101011110111010001010111100001001", 
    199 => "11101100011111100010110001000100000111110100", 
    200 => "11101100100001101000011010001010111001000001", 
    201 => "11101100100011101111110101010000100001011111", 
    202 => "11101100100101111001000010000110001001110011", 
    203 => "11101100101000000100000000011100101100111101", 
    204 => "11101100101010010000110000000100111001000000", 
    205 => "11101100101100011111010000101111001111101111", 
    206 => "11101100101110101111100010001100000111000101", 
    207 => "11101100110001000001100100001011101001010001", 
    208 => "11101100110011010101010110011101110010100011", 
    209 => "11101100110101101010111000110010010011000010", 
    210 => "11101100111000000010001010111000110000011101", 
    211 => "11101100111010011011001100100000100011011110", 
    212 => "11101100111100110101111101011000110111101000", 
    213 => "11101100111111010010011101010000101100010000", 
    214 => "11101101000001110000101011110110110110000101", 
    215 => "11101101000100010000101000111001111101001000", 
    216 => "11101101000110110010010100001000011101000100", 
    217 => "11101101001001010101101101010000100101011101", 
    218 => "11101101001011111010110100000000011001101111", 
    219 => "11101101001110100001101000000101110010010100", 
    220 => "11101101010001001010001001001110011011001111", 
    221 => "11101101010011110100010111000111110011110111", 
    222 => "11101101010110100000010001011111010001001110", 
    223 => "11101101011001001101111000000001111010101000", 
    224 => "11101101011011111101001010011100101101110010", 
    225 => "11101101011110101110001000011100011010010110", 
    226 => "11101101100001100000110001101101100110100000", 
    227 => "11101101100100010101000101111100101011101001", 
    228 => "11101101100111001011000100110101110110111100", 
    229 => "11101101101010000010101110000101001011000101", 
    230 => "11101101101100111100000001010110011111000000", 
    231 => "11101101101111110110111110010101011101010101", 
    232 => "11101101110010110011100100101101100101111110", 
    233 => "11101101110101110001110100001010001101010100", 
    234 => "11101101111000110001101100010110011011100000", 
    235 => "11101101111011110011001100111101001110110010", 
    236 => "11101101111110110110010101101001011001001111", 
    237 => "11101110000001111011000110000101100001000101", 
    238 => "11101110000101000001011101111100000010110100", 
    239 => "11101110001000001001011100110111001110001010", 
    240 => "11101110001011010011000010100001001000000101", 
    241 => "11101110001110011110001110100011101011010111", 
    242 => "11101110010001101011000000101000100111001001", 
    243 => "11101110010100111001011000011001011110101111", 
    244 => "11101110011000001001010101011111101011001010", 
    245 => "11101110011011011010110111100100011010110101", 
    246 => "11101110011110101101111110010000101111110101", 
    247 => "11101110100010000010101001001101100100010011", 
    248 => "11101110100101011000111000000011100011011100", 
    249 => "11101110101000110000101010011011010001101001", 
    250 => "11101110101100001001111111111101000101111011", 
    251 => "11101110101111100100111000010001001100101011", 
    252 => "11101110110011000001010010111111101001011110", 
    253 => "11101110110110011111001111110000010011110010", 
    254 => "11101110111001111110101110001010111001001010", 
    255 => "11101110111101011111101101110110111100001010" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity sin_or_cos_doublefYi is
    generic (
        DataWidth : INTEGER := 44;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of sin_or_cos_doublefYi is
    component sin_or_cos_doublefYi_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    sin_or_cos_doublefYi_rom_U :  component sin_or_cos_doublefYi_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


