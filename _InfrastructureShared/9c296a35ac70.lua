-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9c296a35ac70 

-- params : ...
-- function num : 0
if (string.find)((string.lower)((mp.getfilename)()), "%-%>%(zipsfx%)%-%>%w+%.bat$") == nil then
  return mp.CLEAN
end
return mp.INFECTED

