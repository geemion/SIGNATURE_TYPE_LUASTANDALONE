-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7629391fe478 

-- params : ...
-- function num : 0
if ((mp.getfilename)()):sub(-28) == "word/_rels/document.xml.rels" then
  return mp.INFECTED
end
return mp.CLEAN

