-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/797858865783 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isdll") and (pe.query_import)(pe.IMPORT_STATIC, 1751160259) then
  return mp.INFECTED
end
return mp.CLEAN

