-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/189b38536cde5_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).ppid ~= nil then
  local l_0_0, l_0_2 = nil, nil
  l_0_2 = (this_sigattrlog[9]).utf8p2
  local l_0_1, l_0_3 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC22: Confused about usage of register: R1 in 'UnsetPending'

    local l_0_4 = nil
    if (string.match)(l_0_2, "DestIp=([^;]*);") == nil or (string.match)(l_0_2, "DestIp=([^;]*);") == "" then
      return mp.CLEAN
    end
    local l_0_5 = nil
    local l_0_6 = nil
    local l_0_7 = 30
    local l_0_8 = "Outgoing_SSH_Brute_" .. tostring(l_0_4) .. "_"
    local l_0_9 = 0
    -- DECOMPILER ERROR at PC52: Confused about usage of register: R7 in 'UnsetPending'

    if (MpCommon.AtomicCounterValue)(l_0_8 .. l_0_6) == nil then
      (MpCommon.AtomicCounterSet)(l_0_8 .. l_0_6, 1, l_0_7)
    else
      -- DECOMPILER ERROR at PC59: Confused about usage of register: R7 in 'UnsetPending'

      if 10 < l_0_9 then
        TrackPidAndTechnique(l_0_4, "T1110", "CredentialAccess")
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

