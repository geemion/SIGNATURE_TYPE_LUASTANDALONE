-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b3777a3f8d 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  local l_0_1 = (this_sigattrlog[1]).utf8p1
  local l_0_2 = (this_sigattrlog[2]).utf8p1
  local l_0_3 = (this_sigattrlog[3]).utf8p1
  if l_0_1 == nil or l_0_2 == nil or l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = (string.match)(l_0_1, "[^.]+$")
  local l_0_5 = (string.match)(l_0_2, "[^.]+$")
  local l_0_6 = (string.match)(l_0_3, "[^.]+$")
  if (string.len)(l_0_4) < 4 and (string.len)(l_0_5) < 4 then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("LUA:ExtensionGT4")
  if l_0_4 == l_0_5 and l_0_4 == l_0_6 then
    (mp.set_mpattribute)("LUA:RansomMultiRename")
    if l_0_1 >= 2 and l_0_0 == 1 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
do
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

