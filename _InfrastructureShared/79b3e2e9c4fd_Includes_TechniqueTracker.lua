-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/79b3e2e9c4fd_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (l_0_0:sub(1, 2) == "\\\\" or l_0_0:sub(1, 3) == "\"\\\\" or l_0_0:sub(1, 3) == "\'\\\\") then
    if l_0_0:find("remoteauditservice.exe$") then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC57: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_0:find("\\\\.+\\c%$\\") or l_0_0:find("\\\\.+\\admin%$\\") then
      (bm.add_threat_file)(l_0_0)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

