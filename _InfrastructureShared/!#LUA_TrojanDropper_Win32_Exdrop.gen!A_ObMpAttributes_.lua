-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_TrojanDropper_Win32_Exdrop.gen!A_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME) == "notepad.exe" and ((pe.get_versioninfo)() == nil or ((pe.get_versioninfo)()).CompanyName ~= "Microsoft Corporation") then
  return mp.INFECTED
end
return mp.CLEAN

