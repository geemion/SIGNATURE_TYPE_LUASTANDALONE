-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_RtfDocxDotxwithMacro_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, ".docx->word/vbaproject.bin", 1, true) or (string.find)(l_0_0, ".rtf->word/vbaproject.bin", 1, true) or (string.find)(l_0_0, ".dotx->word/vbaproject.bin", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

