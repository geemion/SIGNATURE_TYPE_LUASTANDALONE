-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SIGATTR_RegOpenKeyBailOut 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_postemu_sigattr_log_tail_size)()
for l_0_4 = l_0_0, 1, -1 do
  local l_0_5 = (pe.get_postemu_sigattr_log_tail)(l_0_4)
  if l_0_5.attribute ~= 12305 and l_0_5.attribute ~= 12363 then
    if l_0_5.attribute == 12300 then
      local l_0_6 = l_0_5.p1
      if (string.sub)(l_0_6, 1, (string.len)("SOFTWARE\\Microsoft\\VBA\\Monitors")) == "SOFTWARE\\Microsoft\\VBA\\Monitors" then
        return mp.CLEAN
      end
      return mp.INFECTED
    else
      do
        do
          do return mp.CLEAN end
          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_ELSE_STMT

          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC42: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.CLEAN

