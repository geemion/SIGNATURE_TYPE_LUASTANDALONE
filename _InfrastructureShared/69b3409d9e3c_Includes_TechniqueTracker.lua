-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3409d9e3c_Includes_TechniqueTracker 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p1)
    else
    end
    -- DECOMPILER ERROR at PC63: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[4]).matched or (this_sigattrlog[5]).matched then
        local l_0_2, l_0_3 = (string.lower)((this_sigattrlog[4]).utf8p1), nil
      end
      -- DECOMPILER ERROR at PC64: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC68: Confused about usage of register: R0 in 'UnsetPending'

      do
        if l_0_2 then
          local l_0_4 = nil
          -- DECOMPILER ERROR at PC83: Confused about usage of register: R1 in 'UnsetPending'

          -- DECOMPILER ERROR at PC91: Confused about usage of register: R1 in 'UnsetPending'

          -- DECOMPILER ERROR at PC99: Confused about usage of register: R1 in 'UnsetPending'

          -- DECOMPILER ERROR at PC108: Confused about usage of register: R1 in 'UnsetPending'

          -- DECOMPILER ERROR at PC112: Confused about usage of register: R1 in 'UnsetPending'

          if ((sysio.IsFileExists)("/bin/" .. (string.match)(l_0_2, "/([^/]+)$")) or (sysio.IsFileExists)("/sbin/" .. (string.match)(l_0_2, "/([^/]+)$")) or (sysio.IsFileExists)("/usr/bin/" .. (string.match)(l_0_2, "/([^/]+)$")) or (sysio.IsFileExists)("/usr/sbin/" .. (string.match)(l_0_2, "/([^/]+)$"))) and (string.find)(l_0_4, "/bin/" .. (string.match)(l_0_2, "/([^/]+)$"), -(5 + (string.len)((string.match)(l_0_2, "/([^/]+)$"))), true) == nil then
            TrackPidAndTechniqueBM("BM", "T1036", "Masquerading")
            return mp.INFECTED
          end
        end
        return mp.CLEAN
      end
    end
  end
end

