-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5178006dbd34 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.get_mpattribute)("MpCPlApplet") and (mp.get_mpattribute)("PEPCODE:VirTool:Win32/VMProtect") then
  return mp.INFECTED
end
return mp.CLEAN

