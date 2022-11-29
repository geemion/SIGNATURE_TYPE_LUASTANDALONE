-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/85d736227e0a_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  if IsPidExcluded(l_0_0.ppid) then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["ossec-agent.exe"] = true
  l_0_3["ltsvc.exe"] = true
  if l_0_3[l_0_2] then
    return mp.CLEAN
  end
end
do
  TrackPidAndTechnique("CMDHSTR", "T1135", "network_share_discovery")
  if IsDetectionThresholdMet("CMDHSTR") then
    return mp.LOWFI
  end
  local l_0_4 = GetTacticsTableForPid(l_0_0.ppid)
  if l_0_4.winrshost_childproc or l_0_4.wsmprovhost_childproc or l_0_4.wmi_childproc or l_0_4.remotedropexe_childproc or l_0_4.python_childproc or l_0_4.rundll32_childproc or l_0_4.mshta_childproc or l_0_4.webshell_childproc or l_0_4.exec_remotedroppedscript_a then
    return mp.INFECTED
  end
  return mp.LOWFI
end

