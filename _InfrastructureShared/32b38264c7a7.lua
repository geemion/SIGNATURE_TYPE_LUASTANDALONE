-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/32b38264c7a7 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "\\skype.mdn.mp.service.exe", 1, true) or (string.find)(l_0_0, "\\microsoft.skype.", 1, true)) then
  return mp.CLEAN
end
;
(bm.trigger_sig)("SpringShellExpl", "EncodedPost")
return mp.CLEAN

