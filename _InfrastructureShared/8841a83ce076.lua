-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8841a83ce076 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[3]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).p1)
  local l_0_1 = (string.lower)((this_sigattrlog[3]).p1)
  if (string.find)(l_0_1, l_0_0 .. ".exe", nil, true) then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

