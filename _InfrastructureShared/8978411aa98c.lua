-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8978411aa98c 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[1]).Size < 256 then
  return mp.INFECTED
end
return mp.CLEAN

