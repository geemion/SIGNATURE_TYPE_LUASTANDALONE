-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/69b3d52eb277 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
    local l_0_1, l_0_2, l_0_3 = this_sigattrlog[2]
  else
    do
      do return mp.CLEAN end
      local l_0_4 = nil
      if not l_0_4.utf8p2 then
        return mp.CLEAN
      end
      if l_0_4.ppid ~= (this_sigattrlog[4]).ppid then
        return mp.CLEAN
      end
      local l_0_5 = nil
      for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_4.utf8p2)) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC52: Confused about usage of register: R7 in 'UnsetPending'

        if (string.lower)(R7_PC52) ~= (string.lower)(l_0_4.image_path) and (sysio.IsFileExists)(R7_PC52) then
          (bm.add_related_file)(R7_PC52)
        end
      end
      return mp.INFECTED
    end
  end
end

