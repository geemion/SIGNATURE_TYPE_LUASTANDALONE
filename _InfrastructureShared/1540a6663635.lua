-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1540a6663635 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_0, -16) == "skypelogview.exe" then
  return mp.CLEAN
end
return mp.LOWFI

