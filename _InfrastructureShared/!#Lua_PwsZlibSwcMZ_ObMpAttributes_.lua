-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_PwsZlibSwcMZ_ObMpAttributes_ 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("PACKED_WITH:(SWC)") then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.getfilename)())
if not (mp.get_mpattributesubstring)("->[pwszlib]->(swc)") and not (string.find)(l_0_0, "->[pwszlib]->(swc)", 1, true) then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("Lua:VpathPwsZlibSwc")
if (mp.readu_u16)(headerpage, 9) ~= 23117 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilesize)()
if l_0_1 > 131072 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(8, l_0_1 - 8)
;
(mp.vfo_add_buffer)(l_0_2, "[PwsZlibSwcMZ]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED

