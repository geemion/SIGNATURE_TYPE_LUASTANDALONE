-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/212979bb1669 

-- params : ...
-- function num : 0
if (string.find)((mp.getfilename)(), "(RarSfx)", 1, true) then
  (mp.set_mpattribute)("//RarSfxPwdAppdata")
end
return mp.CLEAN

