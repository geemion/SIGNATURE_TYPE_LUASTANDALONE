-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45401e39afcd 

-- params : ...
-- function num : 0
if pehdr.Subsystem ~= 1 then
  return mp.INFECTED
end
return mp.CLEAN

