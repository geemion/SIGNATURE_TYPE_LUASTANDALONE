-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5378ab2399c2 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections >= 7 then
  return mp.CLEAN
end
for l_0_3 = 1, pehdr.NumberOfSections do
  if (pesecs[l_0_3]).Name == ".ndata" then
    return mp.INFECTED
  end
end
return mp.CLEAN

