-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_PUA_Win32_PiriformBundler_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("LUAUFS:NSISHasPiriformCert", true)
if l_0_0 == 0 and l_0_1 then
  if not (mp.get_mpattribute)("Lua:IsPUA") then
    (mp.set_mpattribute)("LUA:PiriformAvastBundler")
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

