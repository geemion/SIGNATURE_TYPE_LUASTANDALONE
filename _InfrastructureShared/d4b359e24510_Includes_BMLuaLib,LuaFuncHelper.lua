-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d4b359e24510_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC23: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC39: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2, l_0_3, l_0_4 = (this_sigattrlog[4]).utf8p2
      end
      -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

      if not l_0_2 then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

      local l_0_5 = nil
      if (sysio.CommandLineScan)(l_0_2, 0) then
        (bm.add_related_string)("ScrpService_cmdline", l_0_5, bm.RelatedStringBMReport)
        ;
        (bm.add_related_string)("ScrpService", tostring((sysio.CommandLineScan)(l_0_2, 0)), bm.RelatedStringBMReport)
      end
      return mp.INFECTED
    end
  end
end

