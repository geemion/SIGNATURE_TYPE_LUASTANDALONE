-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/Rogue_VBS_Trapwot/1050029976 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 1024 then
  return mp.CLEAN
end
if (mp.readu_u16)(headerpage, 1) ~= 33328 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 5) ~= 2250901766 or (mp.readu_u32)(headerpage, 9) ~= 234325576 or (mp.readu_u16)(headerpage, 13) ~= 1793 or headerpage[15] ~= 2 then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("Lua:SignedVBEVBSFile", true)
if l_0_0 ~= 0 or not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = tostring(headerpage)
local l_0_3 = l_0_2:find("\006\003U\004\t", 176, true)
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (mp.crc32)(-1, l_0_2, l_0_3, 128)
if l_0_4 == 16967505 then
  if (mp.get_mpattribute)("RPF:AnyFileHasIOAVURL") then
    return mp.INFECTED
  else
    ;
    (mp.set_mpattribute)("Rogue:VBS/TrapwotCert")
  end
end
return mp.CLEAN

