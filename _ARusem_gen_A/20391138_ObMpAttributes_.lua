-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_ARusem_gen_A/20391138_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2300 then
  return mp.INFECTED
end
return mp.CLEAN

