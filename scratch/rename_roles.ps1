$files = Get-ChildItem -Path "src\server\game\AI\NpcBots\*" -Include *.cpp,*.h -Recurse;
foreach ($file in $files) {
    $content = Get-Content $file.FullName;
    $newContent = $content -replace "NPC_BOT_ROLE_", "BOT_ROLE_" -replace "NPC_BOT_MAX_ROLE", "BOT_MAX_ROLE" -replace "NpcBotRoles", "BotRoles";
    Set-Content -Path $file.FullName -Value $newContent -Encoding UTF8;
}
$lfgFile = "src\server\game\DungeonFinding\LFGMgr.cpp";
if (Test-Path $lfgFile) {
    $content = Get-Content $lfgFile;
    $newContent = $content -replace "NPC_BOT_ROLE_", "BOT_ROLE_" -replace "NPC_BOT_MAX_ROLE", "BOT_MAX_ROLE" -replace "NpcBotRoles", "BotRoles";
    Set-Content -Path $lfgFile -Value $newContent -Encoding UTF8;
}
