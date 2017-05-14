# bytes-to-hex-and-back
Powershell functions that convert bytes to hex and hex to bytes. Tossed in the Ascii to Hex as a bonus.

# Usage:
PS C:\Users\chris\Desktop\Testing> **Convert-AsciiToHex "Hello World"**</br>
**48656C6C6F20576F726C64**</br>
PS C:\Users\chris\Desktop\Testing> **$bytes = Convert-HexToBytes 48656C6C6F20576F726C64**</br>
PS C:\Users\chris\Desktop\Testing> **Convert-BytesToHEX $bytes**</br>
**48656c6c6f20576f726c64**</br>
PS C:\Users\chris\Desktop\Testing> **Convert-HexToAscii 48656c6c6f20576f726c64**</br>
**Hello World**</br>
