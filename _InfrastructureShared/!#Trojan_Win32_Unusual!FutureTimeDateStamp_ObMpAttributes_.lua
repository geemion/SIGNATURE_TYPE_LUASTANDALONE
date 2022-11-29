-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Trojan_Win32_Unusual!FutureTimeDateStamp_ObMpAttributes_ 

-- params : ...
-- function num : 0
if peattributes.isexe == false then
  return mp.CLEAN
end
if peattributes.isdriver == true then
  return mp.CLEAN
end
if peattributes.no_security == false then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.epinfirstsect == true then
  return mp.CLEAN
end
if peattributes.suspicious_timestamp == false then
  return mp.CLEAN
end
if peattributes.no_debug == false then
  return mp.CLEAN
end
if pehdr.TimeDateStamp == 0 or pehdr.TimeDateStamp == -1 then
  return mp.CLEAN
end
if not (string.find)((string.lower)((mp.getfilename)()), ".exe$") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 16777216 then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.GetCurrentTimeT)()
if l_0_1 == nil or l_0_1 == 0 or l_0_1 == -1 then
  return mp.CLEAN
end
if l_0_1 + 2621440 < pehdr.TimeDateStamp then
  return mp.LOWFI
end
return mp.CLEAN

