-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/357883a4786b 

-- params : ...
-- function num : 0
if (pesecs[5]).Name == ".rsrc" and (pesecs[5]).VirtualSize > 93955 and (pesecs[5]).VirtualSize < 93961 then
  return mp.INFECTED
end
return mp.CLEAN

