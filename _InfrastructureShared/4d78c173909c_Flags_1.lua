-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4d78c173909c_Flags_1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 197000 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

