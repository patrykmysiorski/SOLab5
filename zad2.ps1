$fileName=$args[0]
$char=$args[1]

$fullName = [string]$fileName + ".txt"

$FileContent = Get-Content $fullName
$Matches = Select-String -InputObject $FileContent -Pattern "s" -AllMatches

Write-Host "Number of "$char "occurences: "$Matches.Matches.Count