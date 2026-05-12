$files = Get-ChildItem -Path "src\server\game\AI\NpcBots\*" -Include *.cpp,*.h -Recurse;
$utf8NoBom = New-Object System.Text.UTF8Encoding($false);
foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName);
    $content = $content.Replace([char]0xfeff, "");
    [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom);
}
Write-Output "Done"
