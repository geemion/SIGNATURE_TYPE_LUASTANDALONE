-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/123617a5d5f1a 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.no_exports == true and peattributes.headerchecksum0 == true and peattributes.entrybyte55 == true and peattributes.no_exception == true then
  return mp.INFECTED
end
return mp.CLEAN

