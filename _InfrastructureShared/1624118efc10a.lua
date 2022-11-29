-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1624118efc10a 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 300000 or (mp.getfilesize)() > 600000 then
  return mp.CLEAN
end
if (this_sigattrlog[3]).matched and (this_sigattrlog[4]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[3]).p1)
  if (string.sub)(l_0_0, -4) == ".dll" then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)((this_sigattrlog[4]).p1)
  if (string.find)(l_0_1, l_0_0) ~= nil then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

