-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b372183bae 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    local l_0_3 = l_0_0:match("sys[tw][eo][mw][36][24]\\([^\\]+)")
    if ({tasks = true, drivers = true, driverstore = true, driverstate = true, config = true})[l_0_3] then
      return mp.CLEAN
    end
  end
  do
    return mp.INFECTED
  end
end

