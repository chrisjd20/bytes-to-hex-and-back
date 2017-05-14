function Convert-HexToBytes {
    param($HEX)
    $HEX = $HEX -split '(..)' | ? { $_ }
    ForEach ($value in $HEX){
        [Convert]::ToInt32($value,16)
    }
}

function Convert-AsciiToHex(){
    Param($a)
    $c = ''
    $b = $a.ToCharArray();
    Foreach ($element in $b) {
        $c = $c + " " + [System.String]::Format("{0:X}", [System.Convert]::ToUInt32($element))
    }
    return $c -replace ' '
}

function Convert-BytesToHEX {
    param($DEC)
    $tmp = ''
    ForEach ($value in $DEC){
        $a = "{0:x}" -f [Int]$value
        if ($a.length -eq 1){
            $tmp += '0' + $a
        } else {
            $tmp += $a
        }
    }
    return $tmp
}
