-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2778bb231875 

-- params : ...
-- function num : 0
if peattributes.x86_image == true and peattributes.epoutofimage == true and peattributes.hasexports == true and peattributes.no_security == true and peattributes.headerchecksum0 == true and peattributes.no_uidata == true and peattributes.no_exception == true and peattributes.no_debug == true and peattributes.no_mipsgp == true and peattributes.no_boundimport == true and peattributes.no_ep == true and peattributes.no_comruntime == true then
  return mp.INFECTED
end
return mp.CLEAN

