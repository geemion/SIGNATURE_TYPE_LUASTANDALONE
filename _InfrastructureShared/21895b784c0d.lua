-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/21895b784c0d 

-- params : ...
-- function num : 0
(pe.set_regval)(pe.REG_EIP, (pe.get_regval)(pe.REG_EIP) + (string.byte)((pe.mmap_va)(pevars.sigaddr - 1, 1), 1))
return mp.INFECTED

