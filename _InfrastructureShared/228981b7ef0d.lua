-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/228981b7ef0d 

-- params : ...
-- function num : 0
if (pe.get_regval)(pe.REG_ESP) == 1245120 then
  return mp.INFECTED
end
return mp.CLEAN

