-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6a786af696b3 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1 = l_0_0:match("(.+\\)([^\\]+)$")
if (string.sub)(l_0_1, -18) == "\\windows\\system32\\" or (string.sub)(l_0_1, -18) == "\\windows\\syswow64\\" then
  return mp.INFECTED
end
return mp.CLEAN

