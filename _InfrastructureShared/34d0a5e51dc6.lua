-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/34d0a5e51dc6 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_OLE_FILE") then
  return mp.INFECTED
end
if ((mp.getfilename)()):sub(-14) == "->(ActiveMime)" then
  return mp.INFECTED
end
return mp.LOWFI

