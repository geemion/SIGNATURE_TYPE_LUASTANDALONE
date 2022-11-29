-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Lua_WinexeSvcASREnabled_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if (string.sub)(l_0_1, 0, 4) == "\\\\?\\" then
  l_0_1 = (string.sub)(l_0_1, 5)
end
if l_0_1:sub(1, 8) == "\\device\\" then
  l_0_1 = (MpCommon.PathToWin32Path)(l_0_1)
  if l_0_1 == nil then
    return mp.CLEAN
  end
  l_0_1 = (string.lower)(l_0_1)
end
if not (string.find)(l_0_1, "^c:\\windows\\[^\\]+%.exe$") then
  return mp.CLEAN
end
if (mp.IsHipsRuleEnabled)("d1e49aac-8f56-4280-b9ba-993a6d77406c") ~= true then
  return mp.CLEAN
end
return mp.INFECTED

