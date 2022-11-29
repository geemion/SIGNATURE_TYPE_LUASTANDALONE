-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#CONTEXT_SoftwareBundler_Win32_InstallMonster.A 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if (string.sub)(l_0_1, -10) ~= "\\downloads" and (string.find)(l_0_1, "\\temp\\", 1, true) == nil and (string.sub)(l_0_1, -5) ~= "\\temp" then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
local l_0_3 = (string.match)(l_0_2, "(.+)%(.%).exe$")
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if (string.match)(l_0_4, "(.+).exe$") ~= l_0_3 then
  return mp.CLEAN
end
return mp.INFECTED

