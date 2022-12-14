-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/252902798b9e 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
if (mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_CONTENTNAME) == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_AMSI_CONTENTNAME))
if l_0_1 == nil or (string.len)(l_0_1) == 0 then
  l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  if l_0_1 == nil or (string.len)(l_0_1) == 0 then
    return mp.CLEAN
  end
  l_0_1 = (string.lower)(l_0_1)
end
if (string.find)(l_0_1, "^.:\\windows\\ccmcache\\") then
  return mp.CLEAN
end
local l_0_2 = nil
if (string.match)(l_0_1, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\") == "program files" then
  return mp.CLEAN
end
if (string.match)(l_0_1, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\") == "program files (x86)" then
  return mp.CLEAN
end
return mp.INFECTED

