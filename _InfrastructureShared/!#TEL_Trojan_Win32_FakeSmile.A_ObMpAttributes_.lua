-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Trojan_Win32_FakeSmile.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)) == "online interview.exe" then
  return mp.INFECTED
end
return mp.CLEAN

