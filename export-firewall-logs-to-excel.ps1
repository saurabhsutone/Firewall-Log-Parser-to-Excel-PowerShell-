
# Requires -Modules ImportExcel
# Install if needed: Install-Module -Name ImportExcel -Force -Scope CurrentUser

$inputFile = "C:\Path\To\logfile.txt"
$outputFile = "C:\Path\To\output\waf_logs.xlsx"

$logEntries = @()

Get-Content $inputFile | ForEach-Object {
    $line = $_
    if ($line -match "date=") {
        $entry = [PSCustomObject]@{
            Date         = if ($line -match "date=(\S+)") { $matches[1] } else { "" }
            Time         = if ($line -match "time=(\S+)") { $matches[1] } else { "" }
            SrcIP        = if ($line -match "srcip=(\S+)") { $matches[1] } else { "" }
            SrcPort      = if ($line -match "srcport=(\d+)") { $matches[1] } else { "" }
            SrcCountry   = if ($line -match 'srccountry="([^"]+)"') { $matches[1] } else { "" }
            DstIP        = if ($line -match "dstip=(\S+)") { $matches[1] } else { "" }
            DstPort      = if ($line -match "dstport=(\d+)") { $matches[1] } else { "" }
            DstCountry   = if ($line -match 'dstcountry="([^"]+)"') { $matches[1] } else { "" }
            HTTPMethod   = if ($line -match 'httpmethod="?([A-Z]+)') { $matches[1] } else { "" }
            URL          = if ($line -match 'url="([^"]+)"') { $matches[1] } else { "" }
            Action       = if ($line -match "action=(\S+)") { $matches[1] } else { "" }
            Message      = if ($line -match 'msg="([^"]+)"') { $matches[1] } else { "" }
        }
        $logEntries += $entry
    }
}

# Export to Excel
$logEntries | Export-Excel -Path $outputFile -AutoSize -TableName "WAFLogs"
Write-Output "Log data written to: $outputFile"
