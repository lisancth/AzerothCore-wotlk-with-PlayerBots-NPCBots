$files = Get-ChildItem -Path "src\server\game\AI\NpcBots\*" -Include *.cpp,*.h -Recurse;
$utf8NoBom = New-Object System.Text.UTF8Encoding($false); # $false means NO BOM
foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw;
    # Remove any existing BOM if present (EF BB BF)
    $content = $content.TrimStart("﻿");
    # Re-save as UTF-8 without BOM
    [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom);
}
Write-Host "BOM Removal and UTF-8 normalization complete."
