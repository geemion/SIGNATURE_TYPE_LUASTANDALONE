-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/368914014e83 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_regval)(pe.REG_ESI)
if l_0_0 > 1048576 then
  return mp.INFECTED
end
local l_0_1 = (pe.get_regval)(pe.REG_EDI)
local l_0_2 = (pe.mmap_va)(pevars.sigaddr, 128)
local l_0_3 = (mp.readu_u32)(l_0_2, 21)
local l_0_4 = (pe.mmap_va)(l_0_3, 256)
local l_0_5 = (mp.readu_u32)(l_0_2, 30)
local l_0_6 = (mp.readu_u32)((pe.mmap_va)(l_0_5, 4), 1)
local l_0_7 = "MZ\144\000\003\000\000\000\004\000\000\000\255\255\000\000\184\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\192\000\000\000\014\031\186\014\000\180\t\205!\184\001L\205![DYNEXE] A HELPER STUB TO EMULATE WIN32 MALWARES.$-----------------------------------------------------------jirehPE\000\000L\001\001\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\002\001\v\001\n\n\004\000\000\000\000\000\000\000\000\000\000\000\224\001\000\000\224\001\000\000\228\001\000\000\000\000@\000\001\000\000\000\001\000\000\000\005\000\001\000\000\000\000\000\005\000\001\000\000\000\000\000\224\001\016\000\224\001\000\000\000\000\000\000\003\000@\133\000\000\016\000\000\016\000\000\000\000\016\000\000\016\000\000\000\000\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000.text\000\000\000\000\000\016\000\224\001\000\000\000\000\000\000\224\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\224\000\000\224"
local l_0_8 = "\190\000\000\000\000\189\001\000\000\000��@%\255\000\000\000�ŉN\002@\000\015��\003\rJ\002@\000��\255\000\000\000��N\002@\000��N\002@\000\137\rJ\002@\000��N\002@\000\015��N\002@\000\015��\001с\225\255\000\000\000\015��N\002@\000�N\003@\0000\0280��\001u��\000\000\000\000"
local l_0_9 = (pe.mmap_va)(l_0_1, l_0_0)
local l_0_10 = l_0_7 .. l_0_8 .. l_0_4 .. l_0_9
;
(mp.writeu_u32)(l_0_10, (string.len)(l_0_7) + 2, l_0_0)
;
(mp.writeu_u32)(l_0_10, (string.len)(l_0_7) + 107, l_0_6)
;
(mp.vfo_add_buffer)(l_0_10, "[VUNDO_DYNEXE]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED

