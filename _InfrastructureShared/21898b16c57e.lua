-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/21898b16c57e 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_regval)(pe.REG_EDI)
;
(mp.set_mpattribute)((string.format)("HSTR:Obfuscator.PN!crc_key.7_k1_%08X_%02X", l_0_0, 2))
return mp.CLEAN

