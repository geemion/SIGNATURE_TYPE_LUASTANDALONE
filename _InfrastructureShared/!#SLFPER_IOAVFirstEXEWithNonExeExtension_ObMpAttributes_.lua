-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLFPER_IOAVFirstEXEWithNonExeExtension_ObMpAttributes_ 

-- params : ...
-- function num : 0
if peattributes.isexe then
  local l_0_0 = (string.lower)((mp.getfilename)())
  local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
  if l_0_2 == nil then
    return mp.CLEAN
  end
  if (l_0_2:len() < 4 or (string.sub)(l_0_2, -4) ~= ".exe") and l_0_2:find(".exe->", 1, true) == nil then
    (mp.set_mpattribute)("//GIOAVFirstEXEWithNonExeExtension")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

