-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4b3b3e2bcb0d1_Includes_BMLuaLib 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[5]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC15: Overwrote pending register: R1 in 'AssignReg'

  do
    if (this_sigattrlog[8]).matched then
      local l_0_2, l_0_11, l_0_13 = , nil
    end
    -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC20: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_2 then
      local l_0_1, l_0_10, l_0_12, l_0_14 = (string.lower)(l_0_2)
      l_0_12 = string
      l_0_12 = l_0_12.find
      l_0_14 = l_0_1
      l_0_12 = l_0_12(l_0_14, "\\services.exe", -13, true)
      if l_0_12 then
        l_0_12 = string
        l_0_12 = l_0_12.find
        l_0_14 = l_0_1
        l_0_12 = l_0_12(l_0_14, "\\windows\\system32\\", -30, true)
        if not l_0_12 then
          l_0_12 = string
          l_0_12 = l_0_12.find
          l_0_14 = l_0_1
          l_0_12 = l_0_12(l_0_14, "\\windows\\winsxs\\", 1, true)
        end
        if l_0_12 then
          l_0_12 = mp
          l_0_12 = l_0_12.CLEAN
          return l_0_12
        end
      end
      l_0_12 = string
      l_0_12 = l_0_12.find
      l_0_14 = l_0_1
      l_0_12 = l_0_12(l_0_14, "\\reg.exe", -8, true)
      if not l_0_12 then
        l_0_12 = string
        l_0_12 = l_0_12.find
        l_0_14 = l_0_1
        l_0_12 = l_0_12(l_0_14, "\\regedit.exe", -12, true)
        if not l_0_12 then
          l_0_12 = string
          l_0_12 = l_0_12.find
          l_0_14 = l_0_1
          l_0_12 = l_0_12(l_0_14, "\\powershell.exe", -15, true)
          if not l_0_12 then
            l_0_12 = string
            l_0_12 = l_0_12.find
            l_0_14 = l_0_1
            l_0_12 = l_0_12(l_0_14, "\\cmd.exe", -8, true)
          end
        end
      end
      if l_0_12 then
        l_0_12 = bm
        l_0_12 = l_0_12.get_process_relationships
        l_0_12 = l_0_12()
        local l_0_3, l_0_4 = nil
        if l_0_12 then
          l_0_3 = ipairs
          l_0_4 = l_0_12
          l_0_3 = l_0_3(l_0_4)
          for l_0_8,l_0_9 in l_0_3 do
            local l_0_8, l_0_9 = nil
            l_0_8 = l_0_7.ppid
            if l_0_8 then
              l_0_8 = mp
              l_0_8 = l_0_8.bitand
              l_0_9 = l_0_7.reason_ex
              l_0_8 = l_0_8(l_0_9, 1)
              if l_0_8 == 1 then
                l_0_8 = bm
                l_0_8 = l_0_8.add_related_process
                l_0_9 = l_0_7.ppid
                l_0_8(l_0_9)
              end
            end
          end
        end
      end
    end
    do
      if l_0_10 then
        l_0_12 = string
        l_0_12 = l_0_12.lower
        l_0_14 = l_0_10
        l_0_12 = l_0_12(l_0_14)
        l_0_10 = l_0_12
        local l_0_15 = nil
        l_0_12 = string
        l_0_12 = l_0_12.find
        l_0_14 = l_0_10
        l_0_12 = l_0_12(l_0_14, "\\programdata\\microsoft\\windows defender\\definition updates\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\mpksldrv%.sys")
        if l_0_12 then
          l_0_12 = mp
          l_0_12 = l_0_12.CLEAN
          return l_0_12
        end
      end
      do
        l_0_12 = mp
        l_0_12 = l_0_12.INFECTED
        return l_0_12
      end
    end
  end
end

