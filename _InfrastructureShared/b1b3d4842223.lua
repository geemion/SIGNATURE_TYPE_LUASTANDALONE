-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b1b3d4842223 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[1]).matched then
  l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
else
  if (this_sigattrlog[2]).matched then
    l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p2)
  else
    if (this_sigattrlog[3]).matched then
      l_0_0 = (string.lower)((this_sigattrlog[3]).utf8p2)
    end
  end
end
if l_0_0 ~= nil and (string.len)(l_0_0) > 10 and (string.find)(l_0_0, "pskill", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

