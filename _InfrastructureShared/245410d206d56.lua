-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/245410d206d56 

-- params : ...
-- function num : 0
local l_0_0 = 8
for l_0_4 = 1, 50 do
  if l_0_0 < 1 then
    return mp.CLEAN
  end
  if (sigattr_head[l_0_4]).attribute == 12429 then
    (mp.set_mpattribute)("SIGATTR:AntiEmuRaceThread")
    return mp.CLEAN
  end
  if (sigattr_head[l_0_4]).attribute ~= 12362 then
    l_0_0 = l_0_0 - 1
  end
end
return mp.CLEAN

