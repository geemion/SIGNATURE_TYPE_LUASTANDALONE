-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6cb3eebb2671_Includes_BMLuaLib 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() then
  return mp.CLEAN
end
reportSessionInformation()
add_parents()
if reportGenericRansomware("gend_ransom_meta") == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

