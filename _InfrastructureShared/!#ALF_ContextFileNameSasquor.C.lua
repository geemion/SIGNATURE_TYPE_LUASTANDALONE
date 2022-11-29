-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#ALF_ContextFileNameSasquor.C 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil or l_0_1 == nil then
  return mp.CLEAN
end
do
  if l_0_1:len() > 20 and (string.sub)(l_0_1, -20) == "\\chrome\\application\\" then
    local l_0_3 = {}
    l_0_3["winmm.dll"] = true
    l_0_3["wtsapi32.dll"] = true
    l_0_3["rpcrt4.dll"] = true
    l_0_3["advapi32.dll"] = true
    l_0_3["version.dll"] = true
    l_0_3["userenv.dll"] = true
    l_0_3["user32.dll"] = true
    l_0_3["kernel32.dll"] = true
    l_0_3["winhttp.dll"] = true
    if l_0_3[l_0_2] then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

