-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b38e47ede8_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(bm.get_current_process_startup_info)
if l_0_0 and l_0_1 ~= nil then
  local l_0_2 = l_0_1.ppid
  if l_0_2 ~= nil then
    local l_0_3 = l_0_1.command_line
    if l_0_3 ~= nil then
      l_0_3 = (string.lower)(l_0_3)
      if l_0_3:find("teamviewer", 1, true) or l_0_3:find("g2mcomm.exe") or l_0_3:find("teams", 1, true) or l_0_3:find("discord.exe") or l_0_3:find("explorer.exe") or l_0_3:find("lunc.exe") or l_0_3:find("lync.exe") or l_0_3:find("youdaodict.exe") or l_0_3:find("gitkraken.exe") then
        return mp.CLEAN
      end
    end
    if IsTacticObservedForPid(l_0_2, "processinjection_target") then
      local l_0_4 = GetTaintLevelHR()
      if l_0_4 ~= nil or l_0_4 == "Medium" or l_0_4 == "High" then
        TrackPidAndTechniqueBM("BM", "T1056.001", "keylog")
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

