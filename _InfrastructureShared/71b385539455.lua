-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/71b385539455 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  else
  end
  if (this_sigattrlog[2]).matched then
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC22: Confused about usage of register: R0 in 'UnsetPending'

    if not (this_sigattrlog[2]).utf8p1 or not (this_sigattrlog[2]).utf8p2 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_6 = nil
    local l_0_7 = (this_sigattrlog[2]).utf8p1
    local l_0_8 = l_0_6.utf8p2
    local l_0_9 = (string.match)(l_0_7, "MitigationFlags:([%d]+);")
    local l_0_10 = (string.match)(l_0_8, "MitigationFlags:([%d]+);")
    local l_0_11 = tonumber(l_0_9)
    if (mp.bitand)(l_0_11, 8388608) == 8388608 and (mp.bitand)(tonumber(l_0_10), 8388608) == 0 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

