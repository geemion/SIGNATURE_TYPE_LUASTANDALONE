-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/357f287fcae0 

-- params : ...
-- function num : 0
if (pe.query_import)(pe.IMPORT_STATIC, 1589549540) ~= 0 and (mp.crc32)(-1, epcode, 1, 15) == 183454422 then
  return mp.INFECTED
end
return mp.CLEAN

