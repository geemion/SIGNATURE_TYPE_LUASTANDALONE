-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/b87838e38094 

-- params : ...
-- function num : 0
if (pesecs[pehdr.NumberOfSections]).VirtualSize == 8192 and (mp.bitand)((pesecs[pehdr.NumberOfSections]).Characteristics, 3221225472) == 3221225472 and (mp.bitand)((pesecs[pehdr.NumberOfSections - 1]).Characteristics, 3221225472) == 3221225472 then
  return mp.INFECTED
end
return mp.LOWFI

