-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/f878bc31cba2 

-- params : ...
-- function num : 0
if peattributes.isexe and (pe.query_import)(pe.IMPORT_STATIC, 2269433638) then
  return mp.INFECTED
end
return mp.CLEAN

