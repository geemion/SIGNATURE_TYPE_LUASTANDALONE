-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3c299c52faa2 

-- params : ...
-- function num : 0
if (mp.readu_u32)(headerpage, 1) ~= 1953651835 then
  return mp.CLEAN
end
return mp.INFECTED

