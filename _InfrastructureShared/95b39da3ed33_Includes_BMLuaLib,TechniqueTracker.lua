-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/95b39da3ed33_Includes_BMLuaLib,TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC52: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).wp2 ~= nil then
      local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
    else
    end
    -- DECOMPILER ERROR at PC88: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).wp2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).wp2 ~= nil then
        local l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14, l_0_15, l_0_16, l_0_17, l_0_18, l_0_19, l_0_20, l_0_21, l_0_22, l_0_23, l_0_24, l_0_25, l_0_26, l_0_27, l_0_28, l_0_29, l_0_30, l_0_31, l_0_32, l_0_33, l_0_34, l_0_35, l_0_36, l_0_37, l_0_38, l_0_39, l_0_40, l_0_41 = (string.lower)((this_sigattrlog[4]).utf8p2)
      else
      end
      -- DECOMPILER ERROR at PC116: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC125: Confused about usage of register: R0 in 'UnsetPending'

      if not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).wp2 == nil or (string.lower)((this_sigattrlog[6]).utf8p2) then
        if (this_sigattrlog[2]).matched and (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "copy-as-is", 1, true) and (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/usr/share/rear", 1, true) then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC137: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC146: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC155: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC164: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC173: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC182: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC191: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC200: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC209: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC218: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC227: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC236: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC245: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC254: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC263: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC272: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC281: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC290: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC299: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC308: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC317: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC326: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC335: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC344: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC353: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC362: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC371: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC380: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC389: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC398: Confused about usage of register: R0 in 'UnsetPending'

        -- DECOMPILER ERROR at PC407: Confused about usage of register: R0 in 'UnsetPending'

        if (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/etc/sudoers", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/id_rsa", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/id_rsa.pub", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/id_dsa", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/id_dsa.pub", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/identity", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/identity.pub", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/ssh_host_dsa_key", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/ssh_host_dsa_key.pub", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/ssh_host_rsa_key", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/ssh_host_rsa_key.pub", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/ssh_host_key", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/ssh_host_key.pub", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/authorized_keys", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.ssh/known_hosts", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.bash_history", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/etc/hosts", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/etc/group", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/etc/passwd", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/etc/gshadow", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/etc/shadow", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.aws/credentials", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.aws/config", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/.docker/config.json", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), ".pfx", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), ".key", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), ".ppk", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), ".keytab", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), ".htpasswd", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "private-keys-v1.d", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "/secring.gpg", 1, true) then
          reportRelatedBmHits()
          addRelatedProcess()
          TrackPidAndTechniqueBM("BM", "T1552", "CredentialAccess_ArchiveData")
          TrackPidAndTechniqueBM("BM", "T1560", "Collection_ArchiveData")
          RemediateProcessTreeForLinux()
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    end
  end
end

