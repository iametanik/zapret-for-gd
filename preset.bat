@echo off
title zapret: preset

start "zapret: preset" /min "%~dp0binaries\winws.exe" ^
--wf-tcp=80,443 --wf-udp=443,50000-50100,0-65535 ^
--filter-udp=443 --hostlist="%~dp0schedules\boomlings.txt" --dpi-desync=fake --dpi-desync-repeats=6 --dpi-desync-fake-quic="%~dp0binaries\quic_initial_www_google_com.bin" --new ^
--filter-tcp=443 --hostlist="%~dp0schedules\boomlings.txt" --dpi-desync=split2 --dpi-desync-split-seqovl=681 --dpi-desync-split-pos=1 --dpi-desync-repeats=2 --dpi-desync-fooling=badseq,hopbyhop2 --dpi-desync-split-seqovl-pattern="%~dp0binaries\tls_clienthello_www_google_com.bin" --new ^
--filter-tcp=80 --hostlist="%~dp0schedules\boomlings.txt" --dpi-desync=fake,split2 --dpi-desync-fooling=md5sig --new ^