-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e278d7b69634 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_exports") and (mp.getfilesize)() >= 909312 and (mp.getfilesize)() < 937984 then
  return mp.INFECTED
end
return mp.CLEAN

