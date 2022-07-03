@echo off

:: Pipeline ====================================================================
set "isCore=o:/cgcore"

if exist %isCore% (
    call "o:/cgcore/windows/env/init_alias.cmd"
@rem     call "o:/cgcore/windows/env/init_menu.cmd"
)
set "isCore="
:: =============================================================================