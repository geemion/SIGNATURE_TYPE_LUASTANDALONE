-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/aa78edd7b8af 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and ((hstrlog[2]).matched or (hstrlog[3]).matched or (hstrlog[4]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

