$inputFile = "C:\github\atari-mercenary\bin\merc-0700-15ff.bin"
$outputFile = "C:\github\atari-mercenary\bin\merc-0700-15ff.a65"


$bytes = [System.IO.File]::ReadAllBytes((Resolve-Path $inputFile))
$result = New-Object System.Text.StringBuilder
$line = New-Object System.Collections.Generic.List[string]
$tempStr = ""

function Flush-TempStr {
    if ($tempStr.Length -ge 2) {
        $line.Add("`"$tempStr`"")
    } elseif ($tempStr.Length -eq 1) {
        # Hier lag der Fehler: Jetzt wird das char erst in [byte] gecastet
        $val = [byte][char]$tempStr[0]
        $line.Add(("$" + $val.ToString("X2")))
    }
    $script:tempStr = ""
}

for ($i = 0; $i -lt $bytes.Count; $i++) {
    $b = $bytes[$i]
    if ($b -ge 32 -and $b -le 126 -and $b -ne 34) {
        $tempStr += [char]$b
    } else {
        Flush-TempStr
        $line.Add(("$" + $b.ToString("X2")))
    }

    # Zeilenumbruch alle 12 Elemente für bessere Lesbarkeit
    if ($line.Count -ge 12 -or ($i -eq $bytes.Count -1)) {
        Flush-TempStr
        if ($line.Count -gt 0) {
            [void]$result.AppendLine(".byte " + ($line -join ", "))
            $line.Clear()
        }
    }
}

[System.IO.File]::WriteAllText($outputFile, $result.ToString())
Write-Host "Fertig! Source liegt in $outputFile" -ForegroundColor Green
