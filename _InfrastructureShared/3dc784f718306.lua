-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3dc784f718306 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 4000000 or l_0_0 < 4000 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("pea_ismsil") then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC41: No list found for R1 , SetList fails

do
  local l_0_2 = false
  -- DECOMPILER ERROR at PC43: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC44: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC45: Overwrote pending register: R5 in 'AssignReg'

  for l_0_6 = hstrlog[4], hstrlog[5], hstrlog[6] do
    -- DECOMPILER ERROR at PC47: Overwrote pending register: R7 in 'AssignReg'

    if (hstrlog[8]).matched and (l_0_1[l_0_6]).VA ~= -1 then
      do
        do
          local l_0_7 = (pe.mmap_va)((l_0_1[l_0_6]).VA, 30)
          if (string.find)(l_0_7, "\014\000\a\128", 1, true) == nil then
            break
          end
          -- DECOMPILER ERROR at PC72: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC72: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC72: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
  if l_0_2 == false then
    return mp.CLEAN
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

