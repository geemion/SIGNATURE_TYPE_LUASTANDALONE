-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#meralifeaconfig_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 256 or l_0_0 > 16777216 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 2254718286 and (mp.readu_u32)(headerpage, 1) ~= 21775694 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u16)(headerpage, 3)
local l_0_2 = (mp.readu_u32)(headerpage, 5)
if l_0_2 < 8 or l_0_0 < l_0_2 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_3 = (mp.readfile)(0, l_0_0)
;
(mp.writeu_u16)(l_0_3, 1, 23117)
;
(mp.writeu_u32)(l_0_3, 61, l_0_2)
;
(mp.writeu_u32)(l_0_3, l_0_2 + 1, 17744)
;
(mp.writeu_u16)(l_0_3, l_0_2 + 5, l_0_1)
;
(mp.vfo_add_buffer)(l_0_3, "MeraCfg", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

