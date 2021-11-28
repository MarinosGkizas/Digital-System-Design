// Verilog pattern output written by  TetraMAX (TM)  B-2008.09-SP2-i081128_181834 
// Date: Mon Jun  6 14:20:31 2011
// Module tested: c1355

//     Uncollapsed Stuck Fault Summary Report
// -----------------------------------------------
// fault class                     code   #faults
// ------------------------------  ----  ---------
// Detected                         DT       1611
// Possibly detected                PT          0
// Undetectable                     UD          0
// ATPG untestable                  AU          0
// Not detected                     ND          3
// -----------------------------------------------
// total faults                              1614
// test coverage                            99.81%
// -----------------------------------------------
// 
//            Pattern Summary Report
// -----------------------------------------------
// #internal patterns                         130
//     #basic_scan patterns                   130
// -----------------------------------------------
// 
// rule  severity  #fails  description
// ----  --------  ------  ---------------------------------
// N5    warning      531  redefined module
// 
// There are no clocks
// There are no constraint ports
// There are no equivalent pins
// There are no net connections

`timescale 1 ns / 1 ns

//
// --- NOTE: Remove the comment to define 'tmax_iddq' to activate processing of IDDQ events
//     Or use '+define+tmax_iddq' on the verilog compile line
//
//`define tmax_iddq

module AAA_tmax_testbench_1_16 ;
   parameter NAMELENGTH = 200; // max length of names reported in fails
   integer nofails, bit, pattern, lastpattern;
   integer error_banner; // flag for tracking displayed error banner
   integer loads;        // number of load_unloads for current pattern
   integer patm1;        // pattern - 1
   integer patp1;        // pattern + lastpattern
   integer prev_pat;     // previous pattern number
   integer report_interval; // report pattern progress every Nth pattern
   integer verbose;      // message verbosity level
   parameter NINPUTS = 41, NOUTPUTS = 32;
   wire [0:NOUTPUTS-1] PO; reg [0:NOUTPUTS-1] ALLPOS, XPCT, MASK;
   reg [0:NINPUTS-1] PI, ALLPIS;
   reg [0:8*(NAMELENGTH-1)] POnames [0:NOUTPUTS-1];
   event IDDQ;

   wire G1;
   wire G10;
   wire G11;
   wire G12;
   wire G13;
   wire G1324;
   wire G1325;
   wire G1326;
   wire G1327;
   wire G1328;
   wire G1329;
   wire G1330;
   wire G1331;
   wire G1332;
   wire G1333;
   wire G1334;
   wire G1335;
   wire G1336;
   wire G1337;
   wire G1338;
   wire G1339;
   wire G1340;
   wire G1341;
   wire G1342;
   wire G1343;
   wire G1344;
   wire G1345;
   wire G1346;
   wire G1347;
   wire G1348;
   wire G1349;
   wire G1350;
   wire G1351;
   wire G1352;
   wire G1353;
   wire G1354;
   wire G1355;
   wire G14;
   wire G15;
   wire G16;
   wire G17;
   wire G18;
   wire G19;
   wire G2;
   wire G20;
   wire G21;
   wire G22;
   wire G23;
   wire G24;
   wire G25;
   wire G26;
   wire G27;
   wire G28;
   wire G29;
   wire G3;
   wire G30;
   wire G31;
   wire G32;
   wire G33;
   wire G34;
   wire G35;
   wire G36;
   wire G37;
   wire G38;
   wire G39;
   wire G4;
   wire G40;
   wire G41;
   wire G5;
   wire G6;
   wire G7;
   wire G8;
   wire G9;

   // map PI[] vector to DUT inputs and bidis
   assign G1 = PI[0];
   assign G10 = PI[1];
   assign G11 = PI[2];
   assign G12 = PI[3];
   assign G13 = PI[4];
   assign G14 = PI[5];
   assign G15 = PI[6];
   assign G16 = PI[7];
   assign G17 = PI[8];
   assign G18 = PI[9];
   assign G19 = PI[10];
   assign G2 = PI[11];
   assign G20 = PI[12];
   assign G21 = PI[13];
   assign G22 = PI[14];
   assign G23 = PI[15];
   assign G24 = PI[16];
   assign G25 = PI[17];
   assign G26 = PI[18];
   assign G27 = PI[19];
   assign G28 = PI[20];
   assign G29 = PI[21];
   assign G3 = PI[22];
   assign G30 = PI[23];
   assign G31 = PI[24];
   assign G32 = PI[25];
   assign G33 = PI[26];
   assign G34 = PI[27];
   assign G35 = PI[28];
   assign G36 = PI[29];
   assign G37 = PI[30];
   assign G38 = PI[31];
   assign G39 = PI[32];
   assign G4 = PI[33];
   assign G40 = PI[34];
   assign G41 = PI[35];
   assign G5 = PI[36];
   assign G6 = PI[37];
   assign G7 = PI[38];
   assign G8 = PI[39];
   assign G9 = PI[40];

   // map DUT outputs and bidis to PO[] vector
   assign
      PO[0] = G1324 ,
      PO[1] = G1325 ,
      PO[2] = G1326 ,
      PO[3] = G1327 ,
      PO[4] = G1328 ,
      PO[5] = G1329 ,
      PO[6] = G1330 ,
      PO[7] = G1331 ,
      PO[8] = G1332 ,
      PO[9] = G1333 ,
      PO[10] = G1334 ,
      PO[11] = G1335 ,
      PO[12] = G1336 ,
      PO[13] = G1337 ,
      PO[14] = G1338 ,
      PO[15] = G1339 ,
      PO[16] = G1340 ,
      PO[17] = G1341 ,
      PO[18] = G1342 ,
      PO[19] = G1343 ,
      PO[20] = G1344 ,
      PO[21] = G1345 ,
      PO[22] = G1346 ,
      PO[23] = G1347 ,
      PO[24] = G1348 ,
      PO[25] = G1349 ,
      PO[26] = G1350 ,
      PO[27] = G1351 ,
      PO[28] = G1352 ,
      PO[29] = G1353 ,
      PO[30] = G1354 ,
      PO[31] = G1355 ;

   // instantiate the design into the testbench
   c1355 dut (
      .G1(G1),
      .G10(G10),
      .G11(G11),
      .G12(G12),
      .G13(G13),
      .G1324(G1324),
      .G1325(G1325),
      .G1326(G1326),
      .G1327(G1327),
      .G1328(G1328),
      .G1329(G1329),
      .G1330(G1330),
      .G1331(G1331),
      .G1332(G1332),
      .G1333(G1333),
      .G1334(G1334),
      .G1335(G1335),
      .G1336(G1336),
      .G1337(G1337),
      .G1338(G1338),
      .G1339(G1339),
      .G1340(G1340),
      .G1341(G1341),
      .G1342(G1342),
      .G1343(G1343),
      .G1344(G1344),
      .G1345(G1345),
      .G1346(G1346),
      .G1347(G1347),
      .G1348(G1348),
      .G1349(G1349),
      .G1350(G1350),
      .G1351(G1351),
      .G1352(G1352),
      .G1353(G1353),
      .G1354(G1354),
      .G1355(G1355),
      .G14(G14),
      .G15(G15),
      .G16(G16),
      .G17(G17),
      .G18(G18),
      .G19(G19),
      .G2(G2),
      .G20(G20),
      .G21(G21),
      .G22(G22),
      .G23(G23),
      .G24(G24),
      .G25(G25),
      .G26(G26),
      .G27(G27),
      .G28(G28),
      .G29(G29),
      .G3(G3),
      .G30(G30),
      .G31(G31),
      .G32(G32),
      .G33(G33),
      .G34(G34),
      .G35(G35),
      .G36(G36),
      .G37(G37),
      .G38(G38),
      .G39(G39),
      .G4(G4),
      .G40(G40),
      .G41(G41),
      .G5(G5),
      .G6(G6),
      .G7(G7),
      .G8(G8),
      .G9(G9)   );


   integer errshown;
   event measurePO;
   always @ measurePO begin
      if (((XPCT&MASK) !== (ALLPOS&MASK)) || (XPCT !== (~(~XPCT)))) begin
         errshown = 0;
         for (bit = 0; bit < NOUTPUTS; bit=bit + 1) begin
            if (MASK[bit]==1'b1) begin
               if (XPCT[bit] !== ALLPOS[bit]) begin
                  if (errshown==0) $display("\n// *** ERROR during capture pattern %0d, T=%t", pattern, $time);
                  $display("  %0d %0s (exp=%b, got=%b)", pattern, POnames[bit], XPCT[bit], ALLPOS[bit]);
                  nofails = nofails + 1; errshown = 1;
               end
            end
         end
      end
   end

   event forcePI_default_WFT;
   always @ forcePI_default_WFT begin
      PI = ALLPIS;
   end
   event measurePO_default_WFT;
   always @ measurePO_default_WFT begin
      #40;
      ALLPOS = PO;
      #0; #0 -> measurePO;
      `ifdef tmax_iddq
         #0; ->IDDQ;
      `endif
   end

   always @ IDDQ begin
   `ifdef tmax_iddq
      $ssi_iddq("strobe_try");
      $ssi_iddq("status drivers leaky AAA_tmax_testbench_1_16.leaky");
   `endif
   end

   event capture;
   always @ capture begin
      ->forcePI_default_WFT;
      #100; ->measurePO_default_WFT;
   end


   initial begin

      //
      // --- establish a default time format for %t
      //
      $timeformat(-9,2," ns",18);

      //
      // --- default verbosity to 2 but also allow user override by
      //     using '+define+tmax_msg=N' on verilog compile line.
      //
      `ifdef tmax_msg
         verbose = `tmax_msg ;
      `else
         verbose = 2 ;
      `endif

      //
      // --- default pattern reporting interval to 5 but also allow user
      //     override by using '+define+tmax_rpt=N' on verilog compile line.
      //
      `ifdef tmax_rpt
         report_interval = `tmax_rpt ;
      `else
         report_interval = 5 ;
      `endif

      //
      // --- support generating Extened VCD output by using
      //     '+define+tmax_vcde' on verilog compile line.
      //
      `ifdef tmax_vcde
         // extended VCD, see IEEE Verilog P1364.1-1999 Draft 2
         if (verbose >= 2) $display("// %t : opening Extended VCD output file", $time);
         $dumpports( dut, "sim_vcde.out");
      `endif

      //
      // --- IDDQ PLI initialization
      //     User may activite by using '+define+tmax_iddq' on verilog compile line.
      //     Or by defining `tmax_iddq in this file.
      //
      `ifdef tmax_iddq
         if (verbose >= 3) $display("// %t : Initializing IDDQ PLI", $time);
         $ssi_iddq("dut AAA_tmax_testbench_1_16.dut");
         $ssi_iddq("verb on");
         $ssi_iddq("cycle 0");
         //
         // --- User may select one of the following two methods for fault seeding:
         //     #1 faults seeded by PLI (default)
         //     #2 faults supplied in a file
         //     Comment out the unused lines as needed (precede with '//').
         //     Replace the 'FAULTLIST_FILE' string with the actual file pathname.
         //
         $ssi_iddq("seed SA AAA_tmax_testbench_1_16.dut");   // no file, faults seeded by PLI
         //
         // $ssi_iddq("scope AAA_tmax_testbench_1_16.dut");   // set scope for faults from a file
         // $ssi_iddq("read_tmax FAULTLIST_FILE"); // read faults from a file
         //
      `endif

      POnames[0] = "G1324";
      POnames[1] = "G1325";
      POnames[2] = "G1326";
      POnames[3] = "G1327";
      POnames[4] = "G1328";
      POnames[5] = "G1329";
      POnames[6] = "G1330";
      POnames[7] = "G1331";
      POnames[8] = "G1332";
      POnames[9] = "G1333";
      POnames[10] = "G1334";
      POnames[11] = "G1335";
      POnames[12] = "G1336";
      POnames[13] = "G1337";
      POnames[14] = "G1338";
      POnames[15] = "G1339";
      POnames[16] = "G1340";
      POnames[17] = "G1341";
      POnames[18] = "G1342";
      POnames[19] = "G1343";
      POnames[20] = "G1344";
      POnames[21] = "G1345";
      POnames[22] = "G1346";
      POnames[23] = "G1347";
      POnames[24] = "G1348";
      POnames[25] = "G1349";
      POnames[26] = "G1350";
      POnames[27] = "G1351";
      POnames[28] = "G1352";
      POnames[29] = "G1353";
      POnames[30] = "G1354";
      POnames[31] = "G1355";
      nofails = 0; pattern = -1; lastpattern = 0;
      prev_pat = -2; error_banner = -2;
      /*** No test setup procedure ***/


      /*** Non-scan test ***/

      if (verbose >= 1) $display("// %t : Begin patterns, first pattern = 0", $time);
pattern = 0; // 0
ALLPIS = 41'b10110000001000010010010010010011011100001;
XPCT = 32'b01101111010011111101110110110101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 200

pattern = 1; // 200
ALLPIS = 41'b10011001100001001000001000011001101100001;
XPCT = 32'b01011111011001100111011011111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 400

pattern = 2; // 400
ALLPIS = 41'b00000000000000001111100100110011101100000;
XPCT = 32'b11111111111111111111111000001011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 600

pattern = 3; // 600
ALLPIS = 41'b00000001110001000100000001001000100110010;
XPCT = 32'b11110110111111100011011101111110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 800

pattern = 4; // 800
ALLPIS = 41'b00000000000100000000001000111101111111010;
XPCT = 32'b10000010111111111111111111111011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 1000

pattern = 5; // 1000
ALLPIS = 41'b00001100111000000000001000011111100100101;
XPCT = 32'b11011101011100110001111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 1200

pattern = 6; // 1200
ALLPIS = 41'b00000000000100000010101101111101111111100;
XPCT = 32'b10000001111111111111111111101010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 1400

pattern = 7; // 1400
ALLPIS = 41'b00000000000000011000010100100111101100000;
XPCT = 32'b11111111111111111111110011110011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 1600

pattern = 8; // 1600
ALLPIS = 41'b00000110000001001000010001111110000100000;
XPCT = 32'b11111111111110011111111011110110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 1800

pattern = 9; // 1800
ALLPIS = 41'b00000000000000000000010111101011101100000;
XPCT = 32'b11111111111111111111111111110000;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 2000

pattern = 10; // 2000
ALLPIS = 41'b00000000000000000000010110110011101100000;
XPCT = 32'b11111111111111111111111011110001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 2200

pattern = 11; // 2200
ALLPIS = 41'b00000000000000000000010010001011101100000;
XPCT = 32'b11111111111111011111111111110101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 2400

pattern = 12; // 2400
ALLPIS = 41'b00100111010000000010000100000110001100000;
XPCT = 32'b11111111110110001011111110111011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 2600

pattern = 13; // 2600
ALLPIS = 41'b00100000000000000000000101101100101100111;
XPCT = 32'b11111100011111111111111111111010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 2800

pattern = 14; // 2800
ALLPIS = 41'b01000000000000000000000000111110001100111;
XPCT = 32'b11111100001111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 3000

pattern = 15; // 3000
ALLPIS = 41'b00000000000100110000000000110100101101011;
XPCT = 32'b10111110011111111111100111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 3200

pattern = 16; // 3200
ALLPIS = 41'b00001100000000000000000000101110100100110;
XPCT = 32'b10111100111100111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 3400

pattern = 17; // 3400
ALLPIS = 41'b10100000000000000110001100100000101100001;
XPCT = 32'b01011111010111111111111100111011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 3600

pattern = 18; // 3600
ALLPIS = 41'b00000000000000001000100000100000100001100;
XPCT = 32'b11111001111111111111111011101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 3800

pattern = 19; // 3800
ALLPIS = 41'b00000000000100000000001000111100000100000;
XPCT = 32'b10011111111111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 4000

pattern = 20; // 4000
ALLPIS = 41'b00000000001011001000000000010111101101010;
XPCT = 32'b11111010111111111100011011111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 4200

pattern = 21; // 4200
ALLPIS = 41'b00000110000000000000000000111110000100000;
XPCT = 32'b11111111111110011111011111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 4400

pattern = 22; // 4400
ALLPIS = 41'b01000010000100001000100001111000111000000;
XPCT = 32'b10101111101111011111110011101110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 4600

pattern = 23; // 4600
ALLPIS = 41'b00000000000000000000001000111100010101010;
XPCT = 32'b11001010111111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 4800

pattern = 24; // 4800
ALLPIS = 41'b00000001000000001000110000011101001000100;
XPCT = 32'b11111101111111101111101011100111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 5000

pattern = 25; // 5000
ALLPIS = 41'b00000001000010001101100010001110101000010;
XPCT = 32'b11111110111111101110111001001101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 5200

pattern = 26; // 5200
ALLPIS = 41'b10000000000100000000000000101101001100110;
XPCT = 32'b00111100111110111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 5400

pattern = 27; // 5400
ALLPIS = 41'b00000000000000000000000110010000101100000;
XPCT = 32'b11111111111110111111111111111001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 5600

pattern = 28; // 5600
ALLPIS = 41'b00000000000000000000001101101101010111000;
XPCT = 32'b11000011111111111111111111111010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 5800

pattern = 29; // 5800
ALLPIS = 41'b00000000000000000000000000111100100101100;
XPCT = 32'b11111001111111111111110111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 6000

pattern = 30; // 6000
ALLPIS = 41'b00000000000000000000001000111111001100001;
XPCT = 32'b11011111011111111111111111111110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 6200

pattern = 31; // 6200
ALLPIS = 41'b00000000000000000000000000111100100110100;
XPCT = 32'b11110101111111111111111111111101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 6400

pattern = 32; // 6400
ALLPIS = 41'b00000000000000000001000010110000100110100;
XPCT = 32'b11110101111111111111111111011111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 6600

pattern = 33; // 6600
ALLPIS = 41'b00000000001000010010010000010111100100000;
XPCT = 32'b11111111111111111101110110110101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 6800

pattern = 34; // 6800
ALLPIS = 41'b00000010000000000100010000110010101100001;
XPCT = 32'b11111111011111011111111101111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 7000

pattern = 35; // 7000
ALLPIS = 41'b00010000000000000000010001111110001100001;
XPCT = 32'b11111111011011111111111111110110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 7200

pattern = 36; // 7200
ALLPIS = 41'b00000000000000000001100011111100100110010;
XPCT = 32'b11110110111111111111111111101100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 7400

pattern = 37; // 7400
ALLPIS = 41'b00000000001010011000010100011011100100000;
XPCT = 32'b11111111111111111100110011010011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 7600

pattern = 38; // 7600
ALLPIS = 41'b00000001000000000100110001111110101100001;
XPCT = 32'b11111111011111101111111111100110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 7800

pattern = 39; // 7800
ALLPIS = 41'b00000000000000011000000011111100100101100;
XPCT = 32'b11111001111111111111111011111100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 8000

pattern = 40; // 8000
ALLPIS = 41'b00000000000000101000001101111101010101010;
XPCT = 32'b11001010111111111111111011111010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 8200

pattern = 41; // 8200
ALLPIS = 41'b00000000000010100010010110101010101100000;
XPCT = 32'b11111111111111111010101110110001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 8400

pattern = 42; // 8400
ALLPIS = 41'b00000000001000001000110101101011101100000;
XPCT = 32'b11111111111111111101111011100010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 8600

pattern = 43; // 8600
ALLPIS = 41'b00000101000000000000000000111110000100000;
XPCT = 32'b11111111111110100111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 8800

pattern = 44; // 8800
ALLPIS = 41'b00000000000000000000000110100111101100000;
XPCT = 32'b11111111111111111111111111111001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 9000

pattern = 45; // 9000
ALLPIS = 41'b00000000000000000000000101100111101100000;
XPCT = 32'b11111111111111111111111111111010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 9200

pattern = 46; // 9200
ALLPIS = 41'b00000010000100000000000000101101001100011;
XPCT = 32'b10111110011110011111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 9400

pattern = 47; // 9400
ALLPIS = 41'b10000100000000000000000000111101001110111;
XPCT = 32'b01110100011110111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 9600

pattern = 48; // 9600
ALLPIS = 41'b00001001000000000111100101110111101100000;
XPCT = 32'b11111111111100101111111100001010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 9800

pattern = 49; // 9800
ALLPIS = 41'b00010000000000000000000000111101100101101;
XPCT = 32'b11111001011011111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 10000

pattern = 50; // 10000
ALLPIS = 41'b00100000000000000000000000101101100101011;
XPCT = 32'b11111010000111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 10200

pattern = 51; // 10200
ALLPIS = 41'b11010000001101100000001000110001011100001;
XPCT = 32'b00001111001011111101001111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 10400

pattern = 52; // 10400
ALLPIS = 41'b00000000000000000111100110100000111110011;
XPCT = 32'b11100110111111111111111100001001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 10600

pattern = 53; // 10600
ALLPIS = 41'b00000000000000000011000000101100111100111;
XPCT = 32'b11101101011111111111111110011111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 10800

pattern = 54; // 10800
ALLPIS = 41'b00000000000000000000001110101100101100111;
XPCT = 32'b11011110011111111111111111111001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 11000

pattern = 55; // 11000
ALLPIS = 41'b00000000000000000111110001100011101100000;
XPCT = 32'b11110111111111111111111100000110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 11200

pattern = 56; // 11200
ALLPIS = 41'b00000000000000000111110001100000111110011;
XPCT = 32'b11101110011111111111111100000110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 11400

pattern = 57; // 11400
ALLPIS = 41'b00000000000000000010100000101100111100111;
XPCT = 32'b11111100011111111111111110101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 11600

pattern = 58; // 11600
ALLPIS = 41'b00000000000000000000001101101100101100111;
XPCT = 32'b11111100011111111111111111111010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 11800

pattern = 59; // 11800
ALLPIS = 41'b00000000000000000111110010100011101100000;
XPCT = 32'b01111111111111111111111100000101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 12000

pattern = 60; // 12000
ALLPIS = 41'b00000000001000001000100001111100101101100;
XPCT = 32'b11111001111111111101111011101110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 12200

pattern = 61; // 12200
ALLPIS = 41'b00010000000000000000010001110010001100001;
XPCT = 32'b11111111011011111111111111110110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 12400

pattern = 62; // 12400
ALLPIS = 41'b00000000000000000000101001110011001100001;
XPCT = 32'b11011111011111111111111111101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 12600

pattern = 63; // 12600
ALLPIS = 41'b00000000001010011000010100010111100100000;
XPCT = 32'b11111111111111111100110011110001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 12800

pattern = 64; // 12800
ALLPIS = 41'b00000000000100000010001100110001111111010;
XPCT = 32'b10000010111111111111111110111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 13000

pattern = 65; // 13000
ALLPIS = 41'b00000000000000000000000000111111011100001;
XPCT = 32'b11101111011111111111111111101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 13200

pattern = 66; // 13200
ALLPIS = 41'b00000000000000000001100011111111011100001;
XPCT = 32'b11101111011111111111111111011100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 13400

pattern = 67; // 13400
ALLPIS = 41'b00000000000100000000001000111101111111100;
XPCT = 32'b10000001111111111111111110111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 13600

pattern = 68; // 13600
ALLPIS = 41'b00000001000000000000000000111110101100001;
XPCT = 32'b11111111011111101111111101111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 13800

pattern = 69; // 13800
ALLPIS = 41'b00000000000100011000001011111100001100000;
XPCT = 32'b10011111111111111111110111111100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 14000

pattern = 70; // 14000
ALLPIS = 41'b00000000000000101001010010111111101100000;
XPCT = 32'b11111111111111111111100011010101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 14200

pattern = 71; // 14200
ALLPIS = 41'b00000000000100000000000000111100011100000;
XPCT = 32'b10101111111111111110111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 14400

pattern = 72; // 14400
ALLPIS = 41'b00000000000110010001000001111100011100000;
XPCT = 32'b10101111111111111111110111011110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 14600

pattern = 73; // 14600
ALLPIS = 41'b00000000001000001000100010111100100101010;
XPCT = 32'b11111010111111111111111011101101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 14800

pattern = 74; // 14800
ALLPIS = 41'b00000000010000001001010010111111101100000;
XPCT = 32'b11111111111111111001111011010101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 15000

pattern = 75; // 15000
ALLPIS = 41'b00000000010000001000101100111101010101100;
XPCT = 32'b11001001111111111111111011101011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 15200

pattern = 76; // 15200
ALLPIS = 41'b00000101100000001000110000111110000100000;
XPCT = 32'b11111111111110101111111011100111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 15400

pattern = 77; // 15400
ALLPIS = 41'b00000000000000000000010100100111101100000;
XPCT = 32'b11111111111111111111111111110011;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 15600

pattern = 78; // 15600
ALLPIS = 41'b00000000000000000101000000000111101100000;
XPCT = 32'b11111111111111101111111101011111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 15800

pattern = 79; // 15800
ALLPIS = 41'b00000001000000000100100000101111101100111;
XPCT = 32'b11111100011111111111111101101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 16000

pattern = 80; // 16000
ALLPIS = 41'b00000010000000000000010001101111101100111;
XPCT = 32'b11111100011111111111111111110110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 16200

pattern = 81; // 16200
ALLPIS = 41'b00000100001011001000000000110111000101011;
XPCT = 32'b11111010011111111100011011111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 16400

pattern = 82; // 16400
ALLPIS = 41'b00000000000000000111100101100011101100000;
XPCT = 32'b11111111111101111111111100001010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 16600

pattern = 83; // 16600
ALLPIS = 41'b00001000000000000111100101100011000100001;
XPCT = 32'b11111111011111111111111100001010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 16800

pattern = 84; // 16800
ALLPIS = 41'b00010000000000000010100000101100101100111;
XPCT = 32'b11111100011111111111111110101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 17000

pattern = 85; // 17000
ALLPIS = 41'b00000000000000000000010001001011101100000;
XPCT = 32'b11111111110111111111111111110110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 17200

pattern = 86; // 17200
ALLPIS = 41'b01000000011000011000000000110100101101011;
XPCT = 32'b11111010011111111001110011111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 17400

pattern = 87; // 17400
ALLPIS = 41'b00000000000000000111100110100011101100000;
XPCT = 32'b11111111011111111111111100001001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 17600

pattern = 88; // 17600
ALLPIS = 41'b00000000000000000011000000000111101100000;
XPCT = 32'b11111110111111111111111110011111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 17800

pattern = 89; // 17800
ALLPIS = 41'b00000000000000110000000000010011101100000;
XPCT = 32'b11111011111111111111100111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 18000

pattern = 90; // 18000
ALLPIS = 41'b00000000000000000111110001100111101110010;
XPCT = 32'b11110110111111111111111100000110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 18200

pattern = 91; // 18200
ALLPIS = 41'b00000100000000000000000000111110110100101;
XPCT = 32'b11101101011110111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 18400

pattern = 92; // 18400
ALLPIS = 41'b00000100000000000000001000111110100100011;
XPCT = 32'b11011110011110111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 18600

pattern = 93; // 18600
ALLPIS = 41'b00001010000000000000010010111110100100000;
XPCT = 32'b11111111111101011111111111110101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 18800

pattern = 94; // 18800
ALLPIS = 41'b00000010000000000000000000111110101100001;
XPCT = 32'b11111111011111011111111111110111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 19000

pattern = 95; // 19000
ALLPIS = 41'b00000000001000010010010000011011100100000;
XPCT = 32'b11111111111111111101110110010111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 19200

pattern = 96; // 19200
ALLPIS = 41'b00000001000000000100100000111110100100001;
XPCT = 32'b11111111011111101111111101101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 19400

pattern = 97; // 19400
ALLPIS = 41'b00000110000001001000000000111110001100000;
XPCT = 32'b11111111111110011111011011111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 19600

pattern = 98; // 19600
ALLPIS = 41'b00000101100000001000100001111110001100000;
XPCT = 32'b11111111111110100111111011101110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 19800

pattern = 99; // 19800
ALLPIS = 41'b00000000000000000000000011100111101100000;
XPCT = 32'b11111111111111111111111111111100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 20000

pattern = 100; // 20000
ALLPIS = 41'b00111111000000110000000011111111101100000;
XPCT = 32'b11111111110000001111100111111100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 20200

pattern = 101; // 20200
ALLPIS = 41'b00000000000000000100100000000111101100000;
XPCT = 32'b11111111111011111111111101101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 20400

pattern = 102; // 20400
ALLPIS = 41'b01000000000000000000000000111101100100111;
XPCT = 32'b11111100001111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 20600

pattern = 103; // 20600
ALLPIS = 41'b00000000000000000000000110001011101100000;
XPCT = 32'b11111101111111111111111111111001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 20800

pattern = 104; // 20800
ALLPIS = 41'b00000000000000000000000000111110001111110;
XPCT = 32'b11110000111111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 21000

pattern = 105; // 21000
ALLPIS = 41'b00000000000000000010100000000111101100000;
XPCT = 32'b11101111111111111111111110101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 21200

pattern = 106; // 21200
ALLPIS = 41'b00000000000000000000000101001011101100000;
XPCT = 32'b11011111111111111111111111111010;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 21400

pattern = 107; // 21400
ALLPIS = 41'b00001000000100000000000000111110100110111;
XPCT = 32'b10110100011101111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 21600

pattern = 108; // 21600
ALLPIS = 41'b00000000011100011000000000110100101101011;
XPCT = 32'b11111010011111111001110011111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 21800

pattern = 109; // 21800
ALLPIS = 41'b10000000000000000111110010100111111100000;
XPCT = 32'b01101111111111111111111100000101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 22000

pattern = 110; // 22000
ALLPIS = 41'b10000000000000000111110010100000101100001;
XPCT = 32'b11111111011111111111111100000101;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 22200

pattern = 111; // 22200
ALLPIS = 41'b00000000000000000000000000111101100100101;
XPCT = 32'b11111101011111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 22400

pattern = 112; // 22400
ALLPIS = 41'b00000000000000000000000000111110001101010;
XPCT = 32'b11111010111111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 22600

pattern = 113; // 22600
ALLPIS = 41'b00000000000000000000000000111110001100110;
XPCT = 32'b11111100111111111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 22800

pattern = 114; // 22800
ALLPIS = 41'b00000110000000001000100000100010100000000;
XPCT = 32'b11111111111110011111111011101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 23000

pattern = 115; // 23000
ALLPIS = 41'b00000000000000001000101000010001110001010;
XPCT = 32'b11001010111111111111111011101111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 23200

pattern = 116; // 23200
ALLPIS = 41'b00000001000000000101000011101000000000010;
XPCT = 32'b11111110111111101111111101011100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 23400

pattern = 117; // 23400
ALLPIS = 41'b01010000000000000000000000111110101100000;
XPCT = 32'b11111111101011111111111111111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 23600

pattern = 118; // 23600
ALLPIS = 41'b00000001000001001000000000110110000101011;
XPCT = 32'b11111010011111101111011011111111;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 23800

pattern = 119; // 23800
ALLPIS = 41'b00000000000000000100000001111010101100000;
XPCT = 32'b11111111111111111111111101111110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 24000

pattern = 120; // 24000
ALLPIS = 41'b00000000000000000000000011010001101100000;
XPCT = 32'b11111111111111111111111111111100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 24200

pattern = 121; // 24200
ALLPIS = 41'b00000001000000001000110110010101000000100;
XPCT = 32'b11111101111111101111110011100001;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 24400

pattern = 122; // 24400
ALLPIS = 41'b00000000000000000000000011101101101110101;
XPCT = 32'b11110101011111111111110111111100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 24600

pattern = 123; // 24600
ALLPIS = 41'b00000000000100000000001011111100100100000;
XPCT = 32'b10011111111111111111111011111100;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 24800

pattern = 124; // 24800
ALLPIS = 41'b00000000000000000100100001011111001100110;
XPCT = 32'b11111100111111101111111101101110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 25000

pattern = 125; // 25000
ALLPIS = 41'b00000001000000001101000001110111000100001;
XPCT = 32'b11111111011101101111111001011110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 25200

pattern = 126; // 25200
ALLPIS = 41'b01010010000000000000010001111111001100010;
XPCT = 32'b11111110101011011111011111110110;
MASK = 32'b11111111111111111111111111111111;
#0 ->capture;
#200; // 25400

//pattern = 127; // 25400
//ALLPIS = 41'b00000000001011000000000001110111101101010;
//XPCT = 32'b11111010111110111100011111111110;
//MASK = 32'b11111111111111111111111111111111;
//#0 ->capture;
//#200; // 25600

//pattern = 128; // 25600
//ALLPIS = 41'b00010011000000001000100111101010001000010;
//XPCT = 32'b11111110111011001111011011101000;
//MASK = 32'b11111111111111111111111111111111;
//#0 ->capture;
//#200; // 25800

//pattern = 129; // 25800
//ALLPIS = 41'b00000000000001011000000001100011101100000;
//XPCT = 32'b11111111111110111111010011111110;
//MASK = 32'b11111111111111111111111111111111;
//#0 ->capture;
//#200; // 26000

      $display("// %t : Simulation of %0d patterns completed with %0d errors\n", $time, pattern+1, nofails);
      if (verbose >=2) $finish(2);
      /* else */ $finish(0);
   end
endmodule