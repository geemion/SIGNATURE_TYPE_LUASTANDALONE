-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/41b335e0af21 

-- params : ...
-- function num : 0
if (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())) == (string.lower)((mp.utf16to8)((this_sigattrlog[3]).wp1)) then
  return mp.INFECTED
end
return mp.CLEAN

