-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5829fbcd83e3 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:find("\\microsoft\\windows\\currentversion\\run\\", 1, true) or l_0_0:find("\\microsoft\\windows\\currentversion\\policies\\explorer\\run\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

