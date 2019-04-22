^m::  										;;Trigger script with CTRL + M
msgbox start
Loop, read, C:\Users\jhisson\Desktop\ENTERBIN.TXT					;;The file to read in to a loop
{
	sleep 1000								;;A wait
	send  %A_LoopReadLine%							;;The current read value pulled from the file
	SEND {TAB}								;;A sent input
	SLEEP 1000								;;A sleep
	SEND {DOWN}								;;A sent input
FileAppend, %A_LoopReadLine% `n, C:\Users\jhisson\Desktop\bindoneoutput.TXT		;;Record current run to an output file 
}




^p::Pause										;;CTRL + P will pause the script press again to unpause
