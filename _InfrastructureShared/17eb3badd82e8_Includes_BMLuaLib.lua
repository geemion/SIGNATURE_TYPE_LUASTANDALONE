-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/17eb3badd82e8_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or (this_sigattrlog[4]).matched) and (this_sigattrlog[4]).utf8p2 ~= nil then
      local l_0_1, l_0_2, l_0_3 = (this_sigattrlog[3]).utf8p2
    else
    end
    if not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p2 == nil or (this_sigattrlog[5]).utf8p2 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC62: Confused about usage of register: R0 in 'UnsetPending'

    local l_0_4 = (string.lower)((this_sigattrlog[5]).utf8p2)
    local l_0_5 = {}
    -- DECOMPILER ERROR at PC67: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC68: Overwrote pending register: R2 in 'AssignReg'

    if ("RemoteRunner.hta")(l_0_4, l_0_5) then
      return mp.CLEAN
    end
    local l_0_6 = contains
    local l_0_7 = l_0_4
    do
      local l_0_8 = {}
      -- DECOMPILER ERROR at PC86: No list found for R4 , SetList fails

      -- DECOMPILER ERROR at PC90: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC91: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC94: Overwrote pending register: R5 in 'AssignReg'

      if l_0_6 then
        l_0_6(l_0_7, l_0_8, (" -s ").RelatedStringBMReport)
        -- DECOMPILER ERROR at PC97: Overwrote pending register: R2 in 'AssignReg'

        -- DECOMPILER ERROR at PC98: Overwrote pending register: R2 in 'AssignReg'

        return l_0_6
      end
      -- DECOMPILER ERROR at PC100: Overwrote pending register: R2 in 'AssignReg'

      -- DECOMPILER ERROR at PC101: Overwrote pending register: R2 in 'AssignReg'

      do return l_0_6 end
      -- WARNING: undefined locals caused missing assignments!
    end
  end
end

