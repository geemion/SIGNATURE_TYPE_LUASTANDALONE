-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/694138b7724c 

-- params : ...
-- function num : 0
if (this_sigattrlog[4]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[4]).p1)
  local l_0_1 = (string.lower)((this_sigattrlog[4]).p2)
  if l_0_0 and l_0_1 and (string.find)(l_0_0, "^%d%d%d+") and (string.find)(l_0_1, "^(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)$") then
    return mp.INFECTED
  end
  return mp.CLEAN
end
do
  return mp.CLEAN
end

