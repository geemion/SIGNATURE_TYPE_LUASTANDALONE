-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/527859d6687a_Flags_1 

-- params : ...
-- function num : 0
if ((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or 0 + 1 + 1 + 1 == 3 then
  return mp.INFECTED
end
return mp.CLEAN

