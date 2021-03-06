#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2306f40 .scope module, "testALUControlLUT" "testALUControlLUT" 2 4;
 .timescale -9 -12;
v0x231f220_0 .var "ALUCommand", 3 0;
v0x231f2e0_0 .net "invertB", 0 0, v0x231ef90_0; 1 drivers
v0x231f390_0 .net "muxindex", 2 0, v0x231f030_0; 1 drivers
v0x231f440_0 .net "secondaryOperation", 0 0, v0x231f0d0_0; 1 drivers
v0x231f520_0 .net "setFlag", 0 0, v0x231f180_0; 1 drivers
L_0x231f5d0 .part v0x231f220_0, 0, 3;
S_0x2307030 .scope module, "alucontrol" "ALUcontrolLUT" 2 13, 3 17, S_0x2306f40;
 .timescale -9 -12;
v0x2307120_0 .net "ALUcommand", 2 0, L_0x231f5d0; 1 drivers
v0x231ef90_0 .var "invertB", 0 0;
v0x231f030_0 .var "muxindex", 2 0;
v0x231f0d0_0 .var "secondaryOperation", 0 0;
v0x231f180_0 .var "setFlag", 0 0;
E_0x2307840 .event edge, v0x2307120_0;
    .scope S_0x2307030;
T_0 ;
    %wait E_0x2307840;
    %load/v 8, v0x2307120_0, 3;
    %cmpi/u 8, 0, 3;
    %jmp/1 T_0.0, 6;
    %cmpi/u 8, 1, 3;
    %jmp/1 T_0.1, 6;
    %cmpi/u 8, 2, 3;
    %jmp/1 T_0.2, 6;
    %cmpi/u 8, 3, 3;
    %jmp/1 T_0.3, 6;
    %cmpi/u 8, 4, 3;
    %jmp/1 T_0.4, 6;
    %cmpi/u 8, 5, 3;
    %jmp/1 T_0.5, 6;
    %cmpi/u 8, 6, 3;
    %jmp/1 T_0.6, 6;
    %cmpi/u 8, 7, 3;
    %jmp/1 T_0.7, 6;
    %jmp T_0.8;
T_0.0 ;
    %set/v v0x231f030_0, 0, 3;
    %set/v v0x231ef90_0, 0, 1;
    %set/v v0x231f180_0, 1, 1;
    %set/v v0x231f0d0_0, 0, 1;
    %jmp T_0.8;
T_0.1 ;
    %set/v v0x231f030_0, 0, 3;
    %set/v v0x231ef90_0, 1, 1;
    %set/v v0x231f180_0, 1, 1;
    %set/v v0x231f0d0_0, 1, 1;
    %jmp T_0.8;
T_0.2 ;
    %movi 8, 1, 3;
    %set/v v0x231f030_0, 8, 3;
    %set/v v0x231ef90_0, 0, 1;
    %set/v v0x231f180_0, 0, 1;
    %set/v v0x231f0d0_0, 0, 1;
    %jmp T_0.8;
T_0.3 ;
    %movi 8, 2, 3;
    %set/v v0x231f030_0, 8, 3;
    %set/v v0x231ef90_0, 1, 1;
    %set/v v0x231f180_0, 0, 1;
    %set/v v0x231f0d0_0, 0, 1;
    %jmp T_0.8;
T_0.4 ;
    %movi 8, 3, 3;
    %set/v v0x231f030_0, 8, 3;
    %set/v v0x231ef90_0, 0, 1;
    %set/v v0x231f180_0, 0, 1;
    %set/v v0x231f0d0_0, 0, 1;
    %jmp T_0.8;
T_0.5 ;
    %movi 8, 3, 3;
    %set/v v0x231f030_0, 8, 3;
    %set/v v0x231ef90_0, 0, 1;
    %set/v v0x231f180_0, 0, 1;
    %set/v v0x231f0d0_0, 1, 1;
    %jmp T_0.8;
T_0.6 ;
    %movi 8, 4, 3;
    %set/v v0x231f030_0, 8, 3;
    %set/v v0x231ef90_0, 0, 1;
    %set/v v0x231f180_0, 0, 1;
    %set/v v0x231f0d0_0, 1, 1;
    %jmp T_0.8;
T_0.7 ;
    %movi 8, 4, 3;
    %set/v v0x231f030_0, 8, 3;
    %set/v v0x231ef90_0, 0, 1;
    %set/v v0x231f180_0, 0, 1;
    %set/v v0x231f0d0_0, 0, 1;
    %jmp T_0.8;
T_0.8 ;
    %jmp T_0;
    .thread T_0, $push;
    .scope S_0x2306f40;
T_1 ;
    %vpi_call 2 17 "$display", "  ALUCommand  | muxindex invertB setFlag secondaryOperation";
    %set/v v0x231f220_0, 0, 4;
T_1.0 ;
    %load/v 8, v0x231f220_0, 4;
   %cmpi/u 8, 7, 4;
    %or 5, 4, 1;
    %jmp/0xz T_1.1, 5;
    %delay 1000000, 0;
    %vpi_call 2 20 "$display", "    %b      |  %b         %b      %b        %b", v0x231f220_0, v0x231f390_0, v0x231f2e0_0, v0x231f520_0, v0x231f440_0;
    %load/v 8, v0x231f220_0, 4;
    %mov 12, 0, 28;
    %addi 8, 1, 32;
    %set/v v0x231f220_0, 8, 4;
    %jmp T_1.0;
T_1.1 ;
    %end;
    .thread T_1;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "ALUcontrol.t.v";
    "./ALUcontrol.v";
