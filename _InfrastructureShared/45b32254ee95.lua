-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b32254ee95 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  if (string.lower)((bm.get_imagepath)()) and (string.match)((string.lower)((bm.get_imagepath)()), "\\([^\\]+)$") == "installutil.exe" then
    return mp.CLEAN
  end
  if l_0_1 ~= nil then
    if not (string.find)((string.lower)(l_0_1), " /u ", 1, true) or not (string.find)((string.lower)(l_0_1), "/logfile= ", 1, true) then
      return mp.CLEAN
    end
    if (string.find)((string.lower)(l_0_1), "\\program files", 1, true) or (string.find)((string.lower)(l_0_1), "/installstatedir=", 1, true) or (string.find)((string.lower)(l_0_1), "upmWmi", 1, true) then
      return mp.CLEAN
    end
    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC109: Confused about usage of register: R7 in 'UnsetPending'

      if (sysio.IsFileExists)(R7_PC109) then
        (mp.ReportLowfi)(R7_PC109, 2023886462)
        ;
        (bm.add_related_file)(R7_PC109)
      end
    end
  end
  do
    ;
    (bm.add_action)("EmsScan", 3000)
    return mp.INFECTED
  end
end

