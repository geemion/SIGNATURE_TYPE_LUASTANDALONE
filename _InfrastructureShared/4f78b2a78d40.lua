-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4f78b2a78d40 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true and (mp.getfilesize)() < 300000 and (pe.query_import)(pe.IMPORT_STATIC, 3727706256) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN

