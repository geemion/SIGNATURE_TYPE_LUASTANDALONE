-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7bd725d02093_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
if IsPidExcluded(l_0_0) then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_0, "T1490", "shadowcopy_delete")
if IsDetectionThresholdMet(l_0_0) then
  return mp.INFECTED
end
if IsTacticObservedForParents(l_0_0, "susp_ransomware", 2) then
  return mp.INFECTED
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 == nil or l_0_1.ppid == nil or l_0_1.image_path == nil then
  return mp.CLEAN
end
local l_0_2 = GetTacticsTableForPid(l_0_1.ppid)
if l_0_2.winrshost_childproc or l_0_2.wsmprovhost_childproc or l_0_2.wmi_childproc or l_0_2.remotedropexe_childproc or l_0_2.python_childproc or l_0_2.rundll32_childproc or l_0_2.wscript_childproc or l_0_2.cscript_childproc or l_0_2.mshta_childproc or l_0_2.webshell_childproc or l_0_2.exec_remotedroppedscript_a or l_0_2.folderguard_blk or l_0_2.folderguard_folder_blk then
  return mp.INFECTED
end
return mp.LOWFI

