-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d76127f1a320 

-- params : ...
-- function num : 0
if (pesecs[5]).Name == ".air0" and (pesecs[6]).Name == ".air1" then
  return mp.INFECTED
end
return mp.CLEAN

