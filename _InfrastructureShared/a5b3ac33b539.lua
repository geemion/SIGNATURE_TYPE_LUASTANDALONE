-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a5b3ac33b539 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2 = nil, nil, nil
;
(mp.set_mpattribute)("WPADExploitAttempt.seen")
do
  if (this_sigattrlog[2]).matched then
    local l_0_3, l_0_4, l_0_6, l_0_11, l_0_13 = (this_sigattrlog[2]).timestamp
  end
  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
      local l_0_5, l_0_7, l_0_12, l_0_14 = (this_sigattrlog[3]).timestamp, (this_sigattrlog[4]).timestamp
    end
    do
      if (this_sigattrlog[5]).matched then
        local l_0_8, l_0_15 = , (this_sigattrlog[5]).timestamp
        local l_0_9 = (this_sigattrlog[5]).utf8p1
        local l_0_10 = (string.lower)((string.sub)((this_sigattrlog[5]).utf8p1, -12))
        if l_0_10 == nil or (string.find)(l_0_10, "rundll32.exe", 1, true) and ((string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "davclnt.dll", 1, true) or (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "winethc.dll", 1, true)) then
          return mp.CLEAN
        end
      end
      -- DECOMPILER ERROR at PC87: Confused about usage of register: R1 in 'UnsetPending'

      -- DECOMPILER ERROR at PC87: Confused about usage of register: R0 in 'UnsetPending'

      do
        if l_0_8 <= l_0_15 then
          local l_0_16 = nil
          -- DECOMPILER ERROR at PC105: Confused about usage of register: R3 in 'UnsetPending'

          if (sysio.IsFileExists)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[6]).utf8p1)) then
            (bm.add_related_file)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[6]).utf8p1))
            -- DECOMPILER ERROR at PC109: Confused about usage of register: R3 in 'UnsetPending'

            ;
            (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[6]).utf8p1), 1402450356)
          end
          -- DECOMPILER ERROR at PC119: Confused about usage of register: R2 in 'UnsetPending'

          -- DECOMPILER ERROR at PC125: Confused about usage of register: R2 in 'UnsetPending'

          if (this_sigattrlog[5]).matched and (sysio.IsFileExists)(l_0_9) then
            (bm.add_related_file)(l_0_9)
          end
          return mp.INFECTED
        end
        return mp.CLEAN
      end
    end
  end
end

