-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_JAMSI_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpIsJScriptEncodeAMSIScan") or (mp.get_mpattribute)("MpIsVBScriptEncodeAMSIScan") or (mp.get_mpattribute)("MpIsVBScriptAMSIScan") or (mp.get_mpattribute)("MpIsJScriptAMSIScan") then
  return mp.INFECTED
end
return mp.CLEAN

