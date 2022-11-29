-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Trojan_Win32_Gatak.EA!dha 

-- params : ...
-- function num : 0
if peattributes.no_security == false then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 990000 then
  return mp.CLEAN
end
local l_0_1 = (pe.get_versioninfo)()
if l_0_1 ~= nil then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
if l_0_3 == "googletalk.exe" and (string.sub)(l_0_2, -28, -1) == "\\appdata\\roaming\\google talk" then
  return mp.INFECTED
end
if l_0_3 == "skype.exe" and (string.sub)(l_0_2, -28, -1) == "\\appdata\\roaming\\skype\\phone" then
  return mp.INFECTED
end
if l_0_3 == "advantage.exe" and (string.sub)(l_0_2, -26, -1) == "\\appdata\\roaming\\advantage" then
  return mp.INFECTED
end
return mp.CLEAN

