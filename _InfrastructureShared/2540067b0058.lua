-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2540067b0058 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if mp.SIGATTR_LOG_SZ > 5 then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  for l_0_6 = mp.SIGATTR_LOG_SZ, 1, -1 do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC15: Confused about usage of register: R4 in 'UnsetPending'

    if (sigattr_tail[R4_PC15]).attribute ~= 12305 and (sigattr_tail[R4_PC15]).attribute ~= 12362 then
      if (sigattr_tail[R4_PC15]).attribute == 12421 then
        return mp.INFECTED
      else
        return mp.CLEAN
      end
    end
  end
  return mp.CLEAN
end

