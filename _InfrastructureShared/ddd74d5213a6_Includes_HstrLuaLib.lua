-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ddd74d5213a6_Includes_HstrLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
local l_0_2 = false
l_0_2 = (MpCommon.StringRegExpSearch)("(\\s(stop|delete)\\s(sense|windefend|wdfilter|diagtrack)(\\s|$))", l_0_1)
if l_0_2 == true then
  if not isTamperProtectionOn() then
    return mp.LOWFI
  end
  return mp.INFECTED
end
return mp.CLEAN

