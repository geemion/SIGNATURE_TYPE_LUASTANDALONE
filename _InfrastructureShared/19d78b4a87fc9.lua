-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19d78b4a87fc9 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.getfilesize)() >= 65536 and (mp.getfilesize)() <= 1048576 and peattributes.no_security and ((hstrlog[1]).matched or (hstrlog[2]).matched) and ((hstrlog[3]).matched or (hstrlog[4]).matched or (hstrlog[5]).matched or (hstrlog[6]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

