-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/79299f30ad92 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_CONTENTNAME))
if (string.find)(l_0_0, "^.:\\windows\\ccmcache\\") then
  return mp.CLEAN
end
local l_0_1 = (string.match)(l_0_0, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\")
if l_0_1 == "program files" then
  return mp.CLEAN
end
if l_0_1 == "program files (x86)" then
  return mp.CLEAN
end
return mp.INFECTED

