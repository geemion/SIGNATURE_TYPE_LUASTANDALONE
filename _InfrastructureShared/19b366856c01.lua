-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19b366856c01 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
local l_0_1, l_0_2, l_0_3 = l_0_0:find("DestIp=(.-;)")
if l_0_3 == nil then
  return mp.CLEAN
end
do
  local l_0_4 = {}
  -- DECOMPILER ERROR at PC19: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC20: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R6 in 'AssignReg'

  for l_0_8,l_0_9 in ("127.0.0.1")("204.174.66.") do
    -- DECOMPILER ERROR at PC24: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC26: Overwrote pending register: R11 in 'AssignReg'

    if (("208.94.117.").find)("209.53.113.", l_0_9, 1, false) ~= nil then
      return mp.CLEAN
    end
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

