-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5c78465af46e 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if not peattributes.dynmem_APIcall then
  return mp.CLEAN
end
if not peattributes.dynmem_uses_access_violation and not peattributes.executes_from_dynamic_memory then
  return mp.CLEAN
end
return mp.INFECTED

