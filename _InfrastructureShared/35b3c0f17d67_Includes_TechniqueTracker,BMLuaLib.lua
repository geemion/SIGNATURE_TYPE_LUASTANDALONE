-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/35b3c0f17d67_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
do
  if (mp.IsHipsRuleEnabled)("5beb7efe-fd9a-4556-801d-275e5ffc04cc") or (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") then
    local l_0_0 = (bm.get_current_process_startup_info)()
    if l_0_0 ~= nil and l_0_0.command_line ~= nil then
      bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
      TrackPidAndTechniqueBM("BM", "T1561.002", "folderguard_blk_hips")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

