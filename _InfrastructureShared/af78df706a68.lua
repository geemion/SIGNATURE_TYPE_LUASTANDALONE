-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/af78df706a68 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 2 or (hstrlog[4]).matched or (hstrlog[5]).matched then
  return mp.LOWFI
end
return mp.CLEAN

