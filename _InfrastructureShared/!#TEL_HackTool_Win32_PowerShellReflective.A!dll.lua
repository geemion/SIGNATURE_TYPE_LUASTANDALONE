-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_HackTool_Win32_PowerShellReflective.A!dll 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if peattributes.no_exports then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (pe.get_exports)()
do
  if l_0_0 == 1 then
    local l_0_2 = (pe.mmap_string_rva)((l_0_1[1]).namerva, 64)
    if (string.len)(l_0_2) >= 21 and (string.find)((string.lower)(l_0_2), "powershell_reflective", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

