-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10d61f194df85 

-- params : ...
-- function num : 0
if peattributes.isdll == true and (mp.get_mpattribute)("NID:Win32/Meterpreter") and peattributes.no_security == true and (mp.getfilesize)() == 16896 then
  return mp.INFECTED
end
return mp.CLEAN

