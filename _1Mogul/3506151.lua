-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_1Mogul/3506151 

-- params : ...
-- function num : 0
if peattributes.epcallnext == false then
  return mp.CLEAN
end
if epcode[17] ~= 195 then
  return mp.CLEAN
end
if epcode[10] ~= 129 then
  return mp.CLEAN
end
if epcode[6] ~= 131 then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = {}
l_0_1.sig = "PSQRVWU�T$\028�H\006\000\0003��\132\005\161*@\000��\004��\028u"
l_0_1.xray_type = 3
l_0_1.bytes_to_decrypt = 0
-- DECOMPILER ERROR at PC33: No list found for R0 , SetList fails

l_0_1 = pe
l_0_1 = l_0_1.xray_block
local l_0_2 = l_0_0
local l_0_3 = 1
local l_0_4 = -1
local l_0_5 = 0
do
  local l_0_6 = 1024
  do return l_0_1(l_0_2, l_0_3, l_0_4, l_0_5, l_0_6) end
  -- DECOMPILER ERROR at PC43: Confused about usage of register R2 for local variables in 'ReleaseLocals'

end

