-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/92785a4f4c70 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 126976 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
end
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

