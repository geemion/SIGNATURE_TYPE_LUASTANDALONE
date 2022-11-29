-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b310fb4a16_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and (string.find)(l_0_0, "fsprocsvc.exe", 1, true) then
  return mp.CLEAN
end
local l_0_1, l_0_2 = pcall(bm.get_current_process_startup_info)
do
  if l_0_1 and l_0_2 ~= nil then
    local l_0_3 = l_0_2.ppid
    if l_0_3 ~= nil and IsTechniqueObservedForPid(l_0_3, "T1036") then
      TrackPidAndTechniqueBM("BM", "T1059", "masqamsi")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

