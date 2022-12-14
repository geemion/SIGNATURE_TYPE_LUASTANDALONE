-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/171d75d05ead4_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
if IsPidExcluded(l_0_0) then
  return mp.CLEAN
end
TrackPidAndTechnique(l_0_0, "T1490", "shadowcopy_delete_resize")
if IsTacticObservedForParents(l_0_0, "susp_ransomware", 2) then
  return mp.LOWFI
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 == nil or l_0_1.ppid == nil or l_0_1.image_path == nil then
  return mp.CLEAN
end
local l_0_2 = l_0_1.image_path
local l_0_3 = (string.lower)(l_0_2:match("([^\\]+)$"))
local l_0_4 = {}
l_0_4["ccmexec.exe"] = true
l_0_4["gpscript.exe"] = true
l_0_4["mpcmdrun.exe"] = true
l_0_4["mssense.exe"] = true
l_0_4["senseir.exe"] = true
if l_0_4[l_0_3] then
  return mp.CLEAN
end
local l_0_5 = GetTacticsTableForPid(l_0_1.ppid)
if l_0_5.winrshost_childproc or l_0_5.wsmprovhost_childproc or l_0_5.wmi_childproc or l_0_5.remotedropexe_childproc or l_0_5.python_childproc or l_0_5.rundll32_childproc or l_0_5.wscript_childproc or l_0_5.cscript_childproc or l_0_5.mshta_childproc or l_0_5.webshell_childproc or l_0_5.exec_remotedroppedscript_a or l_0_5.folderguard_blk or l_0_5.folderguard_folder_blk then
  return mp.LOWFI
end
return mp.LOWFI

