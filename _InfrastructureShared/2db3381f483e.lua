-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db3381f483e 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    local l_0_2 = l_0_1:match("(.+)\\svchost%.exe")
    l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
    if l_0_2 == nil then
      return mp.CLEAN
    end
    l_0_2 = (mp.ContextualExpandEnvironmentVariables)(l_0_2)
    if l_0_2 == nil then
      return mp.CLEAN
    end
    if l_0_2:match("\\windows\\system32") or l_0_2:match("\\windows\\syswow64") then
      return mp.CLEAN
    end
  end
  do
    return mp.INFECTED
  end
end

