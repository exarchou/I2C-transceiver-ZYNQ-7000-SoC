@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Jan 06 23:54:06 +0100 2023
REM SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
REM
REM IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim bench_behav -key {Behavioral:sim_1:Functional:bench} -tclbatch bench.tcl -view C:/Users/Dimitris/Desktop/CERN/coding/Vivado/tutorial9/tutorial9.sim/sim_1/behav/xsim/bench_behav.wcfg -log simulate.log"
call xsim  bench_behav -key {Behavioral:sim_1:Functional:bench} -tclbatch bench.tcl -view C:/Users/Dimitris/Desktop/CERN/coding/Vivado/tutorial9/tutorial9.sim/sim_1/behav/xsim/bench_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0