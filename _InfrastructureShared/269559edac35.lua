-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/269559edac35 

-- params : ...
-- function num : 0
local l_0_0 = (pe.mmap_va)(pevars.sigaddr + 19, 96)
local l_0_1 = (string.byte)(l_0_0, 1) + 2
if #l_0_0 < l_0_1 then
  return mp.CLEAN
end
if (string.byte)(l_0_0, l_0_1) == 232 then
  local l_0_2 = 2
  while 1 do
    while 1 do
      while 1 do
        while 1 do
          while 1 do
            while 1 do
              while 1 do
                if l_0_2 < #l_0_0 then
                  local l_0_3 = (string.byte)(l_0_0, l_0_2)
                  if l_0_3 == 131 then
                    l_0_2 = l_0_2 + 3
                    -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC38: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
              if l_0_3 == 61 then
                l_0_2 = l_0_2 + 5
                -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
            if l_0_3 == 195 then
              l_0_2 = l_0_2 + 1
              -- DECOMPILER ERROR at PC46: LeaveBlock: unexpected jumping out IF_THEN_STMT

              -- DECOMPILER ERROR at PC46: LeaveBlock: unexpected jumping out IF_STMT

            end
          end
          if l_0_3 == 0 then
            l_0_2 = l_0_2 + 2
            -- DECOMPILER ERROR at PC50: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC50: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
        if l_0_3 == 204 then
          do return mp.INFECTED end
          -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC56: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
      if l_0_3 == 116 and l_0_1 ~= (string.byte)(l_0_0, l_0_2 + 1) + (l_0_2) then
        return mp.CLEAN
      end
    end
    return mp.CLEAN
  end
end
do
  -- DECOMPILER ERROR at PC76: Overwrote pending register: R2 in 'AssignReg'

  return l_0_2.CLEAN
end

