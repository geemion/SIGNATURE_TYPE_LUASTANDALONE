-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b07f6bf11f0c 

-- params : ...
-- function num : 0
if (pe.isdynamic_va)(pevars.sigaddr) then
  if (pe.query_import)(pe.IMPORT_STATIC, 1589549540) ~= 0 then
    return mp.INFECTED
  end
  if (pe.query_import)(pe.IMPORT_STATIC, 3150467781) ~= 0 then
    return mp.INFECTED
  end
end
return mp.CLEAN

