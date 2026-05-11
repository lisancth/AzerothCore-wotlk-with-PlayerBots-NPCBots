$files = Get-ChildItem -Path "src\server\game\AI\NpcBots\*" -Include *.cpp,*.h -Recurse;
foreach ($file in $files) {
    $bytes = [System.IO.File]::ReadAllBytes($file.FullName);
    # Convert to string and handle potential bad characters
    $content = [System.Text.Encoding]::UTF8.GetString($bytes);
    
    # Revert BotRoles -> NpcBotRoles globally
    $newContent = $content -replace "BotRoles", "NpcBotRoles";
    
    # Force UTF-8 with BOM
    [System.IO.File]::WriteAllLines($file.FullName, $newContent, (New-Object System.Text.UTF8Encoding($true)));
}
Write-Host "Reversion and Deep Encoding Fix complete."
