-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8e2999da327d 

-- params : ...
-- function num : 0
if (((mp.getfilename)()):lower()):find("word/embeddings/oleobject1.bin->(ole stream 0)", -46, true) then
  return mp.INFECTED
end
return mp.LOWFI

