-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d478349d822a 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
else
  if (hstrlog[1]).matched then
    (mp.set_mpattribute)("HSTR:Trojan:Win32/Sefnit.AU")
    return mp.LOWFI
  end
end
return mp.CLEAN

