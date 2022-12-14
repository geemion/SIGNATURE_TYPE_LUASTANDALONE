-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/12db3c9070aa1_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 then
  bm_AddRelatedFileFromCommandLine(l_0_1.command_line, nil, nil, 1)
end
TrackPidAndTechniqueBM(l_0_1.ppid, "T1547.005", "ssp_tamper")
local l_0_2 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_2 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_2 = (this_sigattrlog[2]).utf8p2
  end
end
if l_0_2 ~= nil then
  local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_2)
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
    if (sysio.IsFileExists)(l_0_8) then
      (bm.add_threat_file)(l_0_8)
    end
  end
end
do
  l_0_3 = mp
  l_0_3 = l_0_3.INFECTED
  return l_0_3
end

