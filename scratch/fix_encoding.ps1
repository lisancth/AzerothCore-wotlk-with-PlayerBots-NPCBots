$files = Get-ChildItem -Path "src\server\game\AI\NpcBots\*" -Include *.cpp,*.h -Recurse;
foreach ($file in $files) {
    $content = Get-Content $file.FullName;
    # Force UTF-8 with BOM
    [System.IO.File]::WriteAllLines($file.FullName, $content, (New-Object System.Text.UTF8Encoding($true)));
}
Write-Host "Encoding conversion complete: All files converted to UTF-8 with BOM."
