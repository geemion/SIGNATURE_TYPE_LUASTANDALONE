-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e18f008dcaff 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B") then
  local l_0_0 = nil
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  do
    if l_0_1 ~= nil then
      local l_0_2 = (mp.GetProcessCommandLine)(l_0_1)
      if l_0_2 ~= nil and (string.len)(l_0_2) ~= 0 then
        l_0_0 = (string.match)(l_0_2, ".:\\program files\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
        if l_0_0 == nil or (string.len)(l_0_0) == 0 then
          l_0_0 = (string.match)(l_0_2, ".:\\program files\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
          if l_0_0 == nil or (string.len)(l_0_0) == 0 then
            l_0_0 = (string.match)(l_0_2, ".:\\program files %(x86%)\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
            if l_0_0 == nil or (string.len)(l_0_0) == 0 then
              l_0_0 = (string.match)(l_0_2, ".:\\program files %(x86%)\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              if l_0_0 == nil or (string.len)(l_0_0) == 0 then
                l_0_0 = (string.match)(l_0_2, ".:\\program files\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                if l_0_0 == nil or (string.len)(l_0_0) == 0 then
                  l_0_0 = (string.match)(l_0_2, ".:\\program files %(x86%)\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                end
              end
            end
          end
        end
      end
    end
    if l_0_0 ~= nil and (sysio.IsPathAVExcluded)(l_0_0, false) == true then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("MpDisableCaching")
    local l_0_3 = (mp.getfilename)()
    local l_0_6 = (string.match)(l_0_3, "(.*)%.(%a+)->%w+/%w+.bin$")
    if l_0_6 == nil or l_0_3 == nil then
      l_0_6 = l_0_3
      local l_0_4, l_0_5 = nil
    else
      do
        do
          -- DECOMPILER ERROR at PC134: Confused about usage of register: R4 in 'UnsetPending'

          l_0_6 = l_0_6 .. "." .. l_0_4
          if (sysio.IsFileExists)(l_0_6) then
            (MpCommon.AppendPersistContext)(l_0_6, "enghipscpy:MHSTRLoadWin32importsfromMacroInside", 0)
          end
          return mp.INFECTED
        end
      end
    end
  end
end

