-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3eb3945f5b35 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_1 = (string.lower)(l_0_0)
  if not (string.find)(l_0_1, "pcwdiagnostic.xml", 1, true) then
    return mp.CLEAN
  end
  local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
  if l_0_2 ~= nil then
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
      ;
      (bm.add_related_file)(l_0_7)
    end
  end
  do
    return mp.INFECTED
  end
end

