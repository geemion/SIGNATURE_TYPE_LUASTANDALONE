-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8338f75c34336 

-- params : ...
-- function num : 0
if (hstrlog[1]).matched or (hstrlog[2]).matched then
  if (hstrlog[1]).matched and (hstrlog[2]).matched then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

