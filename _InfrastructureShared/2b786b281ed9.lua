-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2b786b281ed9 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.get_mpattribute)("HSTR:Win32/DelphiFile") and (hstrlog[2]).hitcount >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

