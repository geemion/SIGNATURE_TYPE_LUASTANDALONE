-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3b4eae805 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC18: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
    (mp.ReportLowfi)(l_0_0, 1766475964)
  end
  return mp.INFECTED
end

