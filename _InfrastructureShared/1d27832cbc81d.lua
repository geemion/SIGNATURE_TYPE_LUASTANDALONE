-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1d27832cbc81d 

-- params : ...
-- function num : 0
if (((hstrlog[12]).matched and (hstrlog[13]).matched) or not (hstrlog[14]).matched or (hstrlog[15]).matched) and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

