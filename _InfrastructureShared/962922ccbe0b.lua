-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/962922ccbe0b 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SCRIPT:PHPHeaderTag.A") and (mp.getfilesize)() < 1024 then
  return mp.INFECTED
end
return mp.CLEAN

