-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#CMN_SH_LuaArchTrigger.A_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 ~= nil and l_0_0 >= 20480 then
  return mp.CLEAN
end
local l_0_1 = (mp.enum_mpattributesubstring)("SCPT:SH/Architecture_")
if #l_0_1 > 7 then
  return mp.INFECTED
end
if #l_0_1 + #(mp.enum_mpattributesubstring)("SCPT:SH/os_distro_") > 6 then
  return mp.INFECTED
end
return mp.CLEAN

