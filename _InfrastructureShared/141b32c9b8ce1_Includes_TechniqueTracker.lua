-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/141b32c9b8ce1_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
if (MpCommon.GetPersistContextCountNoPath)("UACBypassExp.T!regset") > 0 then
  local l_0_0 = (MpCommon.GetPersistContextNoPath)("UACBypassExp.T!regset")
  if l_0_0 then
    for l_0_4,l_0_5 in ipairs(l_0_0) do
      local l_0_6 = (string.match)((string.lower)(l_0_5), " (.+)$")
      for l_0_10 = 1, mp.SIGATTR_LOG_SZ do
        if (sigattr_head[l_0_10]).matched and (sigattr_head[l_0_10]).attribute == 16400 then
          local l_0_11 = (string.lower)((sigattr_head[l_0_10]).utf8p2)
          l_0_11 = (string.gsub)(l_0_11, "\"", "")
          if (string.len)(l_0_11) > 4 and (string.find)(l_0_11, (string.lower)(l_0_5), 1, true) then
            TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_trg")
            return mp.INFECTED
          end
          local l_0_12 = (string.match)((string.lower)((sigattr_head[l_0_10]).utf8p2), " (.+)$")
          if l_0_12 and l_0_6 and (string.len)(l_0_12) > 4 and l_0_12 == l_0_6 then
            TrackPidAndTechniqueBM("BM", "T1548.002", "uac_bypass_trg")
            return mp.INFECTED
          end
        end
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

