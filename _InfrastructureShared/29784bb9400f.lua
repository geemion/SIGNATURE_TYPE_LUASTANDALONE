-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/29784bb9400f 

-- params : ...
-- function num : 0
local l_0_0 = (hstrlog[1]).VA
if (pe.isdynamic_va)(l_0_0) == false and (pe.isencrypted_va)(l_0_0 + 9) == false and (pe.isencrypted_va)(l_0_0 + 10) == false and (pe.isencrypted_va)(l_0_0 + 11) == false and (pe.isencrypted_va)(l_0_0 + 12) == false then
  local l_0_1 = (pe.foffset_va)(l_0_0)
  if l_0_1 ~= 4294967295 then
    (mp.readprotection)(false)
    local l_0_2 = (mp.readfile)(0, (mp.getfilesize)())
    ;
    (mp.writeu_u16)(l_0_2, l_0_1 + 6, 5867)
    local l_0_3 = (mp.readu_u32)(l_0_2, 61)
    local l_0_4 = (mp.readu_u32)(l_0_2, l_0_3 + 41)
    local l_0_5 = (pe.foffset_va)(l_0_4 + pehdr.ImageBase)
    local l_0_6 = (mp.readfile)(l_0_5, 32)
    local l_0_7 = (string.find)(l_0_6, "`h", 1, true)
    if l_0_7 ~= nil then
      local l_0_8 = (mp.readu_u32)(l_0_2, l_0_5 + l_0_7 + 2)
      local l_0_9 = (pe.foffset_va)(l_0_8)
      local l_0_10 = (mp.readfile)(l_0_9, 64)
      local l_0_11 = (string.find)(l_0_10, "NP_Initialize", 1, true)
      if l_0_11 ~= nil then
        (mp.writeu_u32)(l_0_2, l_0_9 + 1, 1836544110)
        ;
        (mp.writeu_u32)(l_0_2, l_0_9 + 5, 1836213363)
        ;
        (mp.writeu_u32)(l_0_2, l_0_9 + 9, 0)
      end
    end
    do
      do
        -- DECOMPILER ERROR at PC154: Unhandled construct in 'MakeBoolean' P1

        if (mp.readu_u32)(l_0_6, 1) == 360 and (mp.readu_u32)(l_0_6, 4) == 369033216 and (mp.readu_u32)(l_0_6, 12) == 2425393296 then
          (mp.writeu_u32)(l_0_2, l_0_3 + 41, l_0_4 + 11)
        end
        if (mp.readu_u32)(l_0_6, 1) == 2425393296 and (mp.readu_u32)(l_0_6, 6) == 3093336208 then
          (mp.writeu_u32)(l_0_2, l_0_3 + 41, l_0_0 + 29 - pehdr.ImageBase)
        end
        ;
        (mp.vfo_add_buffer)(l_0_2, "[Obfuscator]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        return mp.LOWFI
      end
    end
  end
end

