-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d1614b8a328a 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.no_security == true and (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched and (hstrlog[4]).matched and (hstrlog[5]).matched and (hstrlog[6]).matched and ((hstrlog[7]).matched or (hstrlog[8]).matched or (hstrlog[9]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

