-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a1b335e90312 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = nil
else
  do
    do return mp.CLEAN end
    local l_0_1 = nil
    if (string.find)((string.lower)((bm.get_imagepath)()), "\\program files", 1, true) or (string.find)((string.lower)((bm.get_imagepath)()), "\\windows\\system32\\svchost.exe", 1, true) or (string.find)((string.lower)((bm.get_imagepath)()), "\\sources\\setup", 1, true) then
      return mp.CLEAN
    end
    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC63: Confused about usage of register: R7 in 'UnsetPending'

      if (sysio.IsFileExists)(R7_PC63) then
        (bm.add_related_file)(R7_PC63)
        if not (MpCommon.QueryPersistContext)(R7_PC63, "T1547.001") then
          (MpCommon.AppendPersistContext)(R7_PC63, "T1547.001", 0)
        end
      end
    end
    return mp.INFECTED
  end
end

