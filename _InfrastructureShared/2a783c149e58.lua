-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2a783c149e58 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections ~= 9 or (hstrlog[1]).VA ~= 4214784 then
  return mp.CLEAN
end
return mp.INFECTED

