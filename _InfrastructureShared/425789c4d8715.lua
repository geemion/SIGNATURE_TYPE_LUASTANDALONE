-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/425789c4d8715 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 32 and (mp.bitand)(mp.HSTR_WEIGHT, 15) >= 2 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:BrowserModifier:Win32/Neobar.A")
return mp.CLEAN

