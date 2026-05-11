$files = Get-ChildItem -Path "src\server\game\AI\NpcBots\*" -Include *.cpp,*.h -Recurse;
foreach ($file in $files) {
    $content = Get-Content $file.FullName;
    # Clean up common macro conflicts
    if ($file.Name -eq "botcommon.h") {
        $header = @"
#ifndef BOT_MACRO_FIX_H
#define BOT_MACRO_FIX_H
#undef VER_COMPANYNAME_STR
#undef VER_PRODUCTVERSION
#undef VER_PRODUCTVERSION_STR
#undef VER_FILEVERSION
#undef VER_FILEVERSION_STR
#endif
"@
        $content = ,$header + $content
    }
    
    # Save as UTF-8 with BOM (MSVC favorite)
    [System.IO.File]::WriteAllLines($file.FullName, $content, (New-Object System.Text.UTF8Encoding($true)));
}
Write-Host "Macro fix and UTF-8 conversion complete."
