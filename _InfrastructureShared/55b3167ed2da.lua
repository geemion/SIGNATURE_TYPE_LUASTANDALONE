-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/55b3167ed2da 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (string.sub)((this_sigattrlog[1]).wp1, -4) == ".pdf" then
  return mp.INFECTED
end
return mp.CLEAN

