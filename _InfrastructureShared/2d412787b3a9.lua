-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2d412787b3a9 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[2]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).p2)
  local l_0_1 = (string.lower)((this_sigattrlog[2]).p1)
  if (string.find)(l_0_1, l_0_0, 10, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

