-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b35b0c4d50_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = nil
  TrackPidAndTechniqueBM("BM", "T1218.011", "Proxy_Exec")
  local l_0_1 = extractDllForRegproc(l_0_0)
  if l_0_1 then
    l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_1)
    if (sysio.IsFileExists)(l_0_1) then
      local l_0_2 = (sysio.GetFileLastWriteTime)(l_0_1)
      if ((sysio.GetLastResult)()).Success and l_0_2 ~= 0 then
        l_0_2 = l_0_2 / 10000000 - 11644473600
        local l_0_3 = (MpCommon.GetCurrentTimeT)()
        if l_0_3 < l_0_2 or l_0_3 - (l_0_2) > 3600 then
          (bm.add_related_file)(l_0_1)
          if IsDetectionThresholdMet("BM") then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  return mp.CLEAN
end

