-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/687824f7d4d9_Flags_1 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched then
  return mp.INFECTED
end
return mp.CLEAN

