-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ScanGoBinaryData_ObMpAttributes_ 

-- params : ...
-- function num : 0
for l_0_3 = 1, pehdr.NumberOfSections do
  if (pesecs[l_0_3]).Name == ".rdata" and pevars.epsec ~= l_0_3 then
    local l_0_4 = nil
    do
      do
        local l_0_5, l_0_6, l_0_7, l_0_8 = (pesecs[l_0_3]).VirtualSize < 262144 and (pesecs[l_0_3]).VirtualSize or 262144
        ;
        (mp.readprotection)(false)
        if peattributes.x86_image then
          l_0_4 = 409600
        else
          if peattributes.amd64_image then
            l_0_4 = 495616
          else
            return mp.CLEAN
          end
        end
        -- DECOMPILER ERROR at PC54: Confused about usage of register: R5 in 'UnsetPending'

        ;
        (pe.mmap_va)(pehdr.ImageBase + (pesecs[l_0_3]).VirtualAddress + l_0_4, l_0_5)
        ;
        (pe.reemulate)()
        do return mp.CLEAN end
        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out DO_STMT

        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC62: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
end
return mp.CLEAN

