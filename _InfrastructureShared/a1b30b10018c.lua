-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a1b30b10018c 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC56: Confused about usage of register: R0 in 'UnsetPending'

  if ((this_sigattrlog[2]).utf8p2 == nil or (string.lower)((this_sigattrlog[2]).utf8p2) ~= nil) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "lsquarantinedataurlstring", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "/usr/bin/mktemp", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "pkill", 1, true) and (string.find)((string.lower)((this_sigattrlog[2]).utf8p2), "curl", 1, true) then
    return mp.INFECTED
  end
  return mp.CLEAN
end

