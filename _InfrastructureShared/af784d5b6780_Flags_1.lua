-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/af784d5b6780_Flags_1 

-- params : ...
-- function num : 0
if (((hstrlog[4]).matched and not (hstrlog[5]).matched) or (hstrlog[1]).matched) and (hstrlog[2]).matched and (hstrlog[3]).matched and 0 + 1 + 1 >= 1 then
  return mp.INFECTED
end
return mp.CLEAN

