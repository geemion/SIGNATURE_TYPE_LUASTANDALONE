-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1c5b392ab0f86_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil and (this_sigattrlog[3]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p2)
  local l_0_1 = l_0_0:match("([^\\]+)$")
  local l_0_2, l_0_3 = (bm.get_process_relationships)()
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    local l_0_9 = (string.lower)((MpCommon.PathToWin32Path)(l_0_8.image_path))
    if l_0_8.reason == bm.RELATIONSHIP_CREATED and (string.find)(l_0_9, l_0_1, 1, true) then
      local l_0_10 = (MpCommon.QueryPersistContext)(l_0_9, "PsExecServiceNonStandardName")
      if l_0_10 then
        local l_0_11, l_0_12 = (bm.get_process_relationships)(l_0_8.ppid)
        for l_0_16,l_0_17 in ipairs(l_0_12) do
          if l_0_17.reason == bm.RELATIONSHIP_CREATED then
            (bm.add_related_process)(l_0_17.ppid)
            TrackPidAndTechniqueBM(l_0_17.ppid, "T1021.002", "psexec_remoteservice_created_c")
          end
        end
        TrackPidAndTechniqueBM(l_0_8.ppid, "T1021.002", "remoteservice_svc_c")
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

