-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_PropagateNSISToInsideFiles 

-- params : ...
-- function num : 0
local l_0_0 = false
if not (mp.get_mpattribute)("RPF:TopLevelFile") and (string.find)((mp.getfilename)(), "%(nsis%-") then
  (mp.set_mpattribute)("LUA:FileInsideNSISInstaller")
  l_0_0 = true
end
if ((mp.get_mpattribute)("HSTR:NSIS_Installer") or (mp.get_mpattribute)("HSTR:NSIS.gen!A")) and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA == 0 and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).Size == 0 then
  (mp.UfsSetMetadataBool)("LUA:UFSInsideUnsignedNSIS", true)
else
  if not (mp.get_mpattribute)("RPF:TopLevelFile") then
    local l_0_1, l_0_2 = (mp.UfsGetMetadataBool)("LUA:UFSInsideUnsignedNSIS", true)
    if l_0_1 == 0 and l_0_2 then
      (mp.set_mpattribute)("LUA:InsideUnsignedNSIS")
    end
  end
end
do
  do
    if not (mp.get_mpattribute)("RPF:TopLevelFile") then
      local l_0_3, l_0_4 = (mp.UfsGetMetadataBool)("Lua:SingleFileInZip", true)
      if l_0_3 == 0 and l_0_4 and l_0_0 then
        (mp.set_mpattribute)("LUA:InsideSingleNSISInZip")
      end
    end
    return mp.CLEAN
  end
end

