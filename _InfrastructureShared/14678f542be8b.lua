-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/14678f542be8b 

-- params : ...
-- function num : 0
if peattributes.ismsil and ((hstrlog[1]).matched or (hstrlog[2]).matched) and (mp.getfilesize)() > 20000 and (mp.getfilesize)() < 30000 then
  return mp.INFECTED
end
return mp.LOWFI

