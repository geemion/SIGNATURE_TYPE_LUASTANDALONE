-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9178fc6ff10e 

-- params : ...
-- function num : 0
if peattributes.x86_image == true and peattributes.hasexports == true and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

