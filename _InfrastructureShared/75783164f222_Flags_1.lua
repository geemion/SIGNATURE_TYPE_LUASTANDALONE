-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/75783164f222_Flags_1 

-- params : ...
-- function num : 0
if (((not (hstrlog[2]).matched or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[1]).matched) and 0 + 1 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

