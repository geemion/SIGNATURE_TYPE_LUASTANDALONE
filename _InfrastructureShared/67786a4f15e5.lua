-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/67786a4f15e5 

-- params : ...
-- function num : 0
if not peattributes.isdll or not peattributes.hasexports then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (pe.get_exports)()
if l_0_0 > 8 then
  return mp.CLEAN
end
local l_0_2 = 0
for l_0_6 = 1, l_0_0 do
  local l_0_7 = (pe.mmap_string_rva)((l_0_1[l_0_6]).namerva, 64)
  if l_0_7 == "Open" then
    l_0_2 = l_0_2 + 1
  end
  if l_0_7 == "Close" then
    l_0_2 = l_0_2 + 1
  end
end
if l_0_2 < 2 then
  return mp.CLEAN
end
return mp.INFECTED

