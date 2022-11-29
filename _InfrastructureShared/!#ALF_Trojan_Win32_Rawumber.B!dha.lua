-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_Trojan_Win32_Rawumber.B!dha 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 4096 or mp.FOOTERPAGE_SZ < 4096 then
  return mp.CLEAN
end
if (mp.bitand)((mp.readu_u16)(headerpage, 1), 61680) == 24656 and (mp.bitand)((mp.readu_u16)(headerpage, 6), 61680) == 57344 then
  local l_0_0 = (mp.readu_u32)(footerpage, mp.FOOTERPAGE_SZ - 7)
  local l_0_1 = (mp.readu_u32)(footerpage, mp.FOOTERPAGE_SZ - 3)
  if l_0_0 ~= 0 and l_0_1 ~= 0 and (mp.bitand)(l_0_0, 61680) == 0 and (mp.bitand)(l_0_1, 61680) == 0 then
    local l_0_2 = (mp.getfilesize)()
    local l_0_3 = (mp.readu_u16)(footerpage, mp.FOOTERPAGE_SZ - 40 - l_0_2 % 40 + 1)
    local l_0_4 = footerpage[mp.FOOTERPAGE_SZ - 40 - l_0_2 % 40 + 7]
    if l_0_3 ~= 0 and l_0_4 ~= 0 and (mp.bitxor)((mp.readu_u16)(headerpage, 1), l_0_3) == 26704 and (mp.bitxor)(headerpage[7], l_0_4) == 232 then
      (mp.set_mpattribute)("MpNonPIIFileType")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

