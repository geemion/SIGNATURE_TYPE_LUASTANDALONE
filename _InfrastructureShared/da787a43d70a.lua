-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/da787a43d70a 

-- params : ...
-- function num : 0
if peattributes.isexe and (hstrlog[1]).matched and (hstrlog[2]).matched then
  return mp.INFECTED
end
return mp.CLEAN

