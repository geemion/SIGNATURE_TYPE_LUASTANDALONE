-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALFPER_Trojan_Win64_ShadowRaptor.AE!dha 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 16777216 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) == 944130375 and (mp.readu_u32)(headerpage, 5) == 20996409 and (mp.readu_u32)(headerpage, 9) == 7799024 and (mp.readu_u32)(headerpage, 13) == 83435776 and (mp.readu_u32)(headerpage, 17) == 0 and (mp.readu_u32)(headerpage, 21) == 11264 and (mp.readu_u32)(headerpage, 25) == 20971520 and (mp.readu_u32)(footerpage, mp.FOOTERPAGE_SZ - 5) == (mp.readu_u32)(footerpage, mp.FOOTERPAGE_SZ - 9) then
  (mp.set_mpattribute)("MpNonPIIFileType")
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

