-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9978240840bf 

-- params : ...
-- function num : 0
if peattributes.ismsil then
  if (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[3]).matched and (hstrlog[4]).matched and (hstrlog[5]).matched and pehdr.NumberOfSections == 3 then
    return mp.INFECTED
  end
  if (hstrlog[1]).matched and (hstrlog[2]).matched and (hstrlog[6]).matched and (hstrlog[7]).matched and (hstrlog[8]).matched and pehdr.NumberOfSections == 3 then
    return mp.INFECTED
  end
end
return mp.CLEAN

