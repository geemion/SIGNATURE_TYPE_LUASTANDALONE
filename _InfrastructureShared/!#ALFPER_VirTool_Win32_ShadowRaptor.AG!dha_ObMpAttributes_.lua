-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALFPER_VirTool_Win32_ShadowRaptor.AG!dha_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= nil and l_0_0:len() > 34 and (l_0_0:find("ole db", 1, true) ~= nil or l_0_0:find("migwiz", 1, true) ~= nil or l_0_0:find("aspdotnet", 1, true) ~= nil) then
  local l_0_1 = "\\common files\\system\\ole db\\oledbjbn.inc"
  local l_0_2 = "\\common files\\system\\ole db\\oledbjml.inc"
  local l_0_3 = "\\windows\\system32\\migwiz\\sfcbn.dat"
  local l_0_4 = "\\windows\\system32\\migwiz\\sfcml.dat"
  local l_0_5 = "\\windows\\microsoft.net\\framework\\v2.0.50727\\asp.netwebadminfiles\\images\\aspdotnet_logo.gif"
  local l_0_6 = "\\windows\\microsoft.net\\framework\\v2.0.50727\\asp.netwebadminfiles\\images\\aspdotnet_logo_small.gif"
  if l_0_0:sub(-(string.len)(l_0_1)) == l_0_1 or l_0_0:sub(-(string.len)(l_0_2)) == l_0_2 or l_0_0:sub(-(string.len)(l_0_3)) == l_0_3 or l_0_0:sub(-(string.len)(l_0_4)) == l_0_4 or l_0_0:sub(-(string.len)(l_0_5)) == l_0_5 or l_0_0:sub(-(string.len)(l_0_6)) == l_0_6 then
    (mp.set_mpattribute)("MpNonPIIFileType")
    return mp.INFECTED
  else
    return mp.CLEAN
  end
else
  do
    do return mp.CLEAN end
    return mp.CLEAN
  end
end

