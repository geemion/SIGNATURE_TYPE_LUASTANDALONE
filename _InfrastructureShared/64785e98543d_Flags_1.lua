-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/64785e98543d_Flags_1 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 300000 and (hstrlog[1]).VA == 0 + pehdr.ImageBase and (hstrlog[2]).matched then
  return mp.INFECTED
end
return mp.CLEAN

