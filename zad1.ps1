$folderName = Read-Host -Prompt 'Input the folder name'
$number = Read-Host -Prompt 'Input the number of files to create'

New-Item -Path "./" -Name $folderName -ItemType "directory"
cd .\$folderName

For ($i=1; $i -le $number; $i++) {
    New-Item -Path . -Name $i".txt" -ItemType "file" -Value "This is a text string."
    }