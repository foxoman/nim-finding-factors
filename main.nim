from strutils import parseInt
import terminal, std/rdstdin

styledEcho fgMagenta, "[**] Find factors for any given number with bruteforce!", resetStyle

var num: int
while true:
	try:
		num = parseInt readLineFromStdin("[*] Please input your number:")
		break
	except:
		styledEcho fgRed, "[x] That is not a valid number! Try again.", resetStyle

for i in 1..num+1:
	if num mod i == 0:
		echo $(num div i) & " x " & $i

styledEcho fgGreen, "[*] All factors have been found.", resetStyle
