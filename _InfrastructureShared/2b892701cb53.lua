-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2b892701cb53 

-- params : ...
-- function num : 0
if (pe.get_regval)(pe.REG_EBX) < 16777216 then
  return mp.CLEAN
end
return mp.INFECTED

