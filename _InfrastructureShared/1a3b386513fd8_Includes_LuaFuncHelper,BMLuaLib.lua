-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1a3b386513fd8_Includes_LuaFuncHelper,BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
local l_0_3 = nil
if (bm.GetProcedureMatchDuration)(1) < (bm.GetProcedureMatchDuration)(0) then
  l_0_3 = (bm.GetProcedureMatchDuration)(0) - (bm.GetProcedureMatchDuration)(1)
else
  l_0_3 = (bm.GetProcedureMatchDuration)(1) - (bm.GetProcedureMatchDuration)(0)
end
if l_0_3 > 50000000 then
  return mp.CLEAN
end
if (this_sigattrlog[3]).matched then
  l_0_2 = (this_sigattrlog[3]).utf8p1
else
  if (this_sigattrlog[4]).matched then
    l_0_2 = (this_sigattrlog[4]).utf8p1
  else
    if (this_sigattrlog[5]).matched then
      l_0_2 = (this_sigattrlog[5]).utf8p1
    else
      if (this_sigattrlog[6]).matched then
        l_0_2 = (this_sigattrlog[6]).utf8p1
      else
        if (this_sigattrlog[8]).matched then
          l_0_2 = (this_sigattrlog[8]).utf8p1
        else
          if (this_sigattrlog[7]).matched then
            l_0_2 = (this_sigattrlog[7]).utf8p1
          else
            if (this_sigattrlog[9]).matched then
              l_0_2 = (this_sigattrlog[9]).utf8p1
            end
          end
        end
      end
    end
  end
end
if isTainted(l_0_2, "remote_file_created_taint") then
  if (string.find)(l_0_2, "/usr/lib/yum-plugins/enabled_repos_upload.py", 1, true) == 1 then
    return mp.CLEAN
  end
  local l_0_4 = nil
  if (bm.get_current_process_startup_info)() and ((bm.get_current_process_startup_info)()).ppid and ((bm.get_current_process_startup_info)()).ppid ~= "" then
    AppendToRollingQueue("queue_pid_taintfactory_a", ((bm.get_current_process_startup_info)()).ppid, 1, 600)
    AppendToRollingQueue("queue_pid_tainted_scripts", ((bm.get_current_process_startup_info)()).ppid, l_0_2, 3600, 500)
    ;
    (bm.trigger_sig)("BMExecutionFromTaintedScript", l_0_2)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

