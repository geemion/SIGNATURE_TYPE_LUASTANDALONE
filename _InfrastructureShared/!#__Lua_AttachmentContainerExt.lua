-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#__Lua_AttachmentContainerExt 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((mp.getfilename)(), -3))
if l_0_0 == ".7z" or l_0_0 == ".gz" then
  (mp.UfsSetMetadataBool)("Lua:AttachmentContainerExt", true)
  return mp.INFECTED
else
  if l_0_0 == "zip" or l_0_0 == "ace" or l_0_0 == "rar" then
    local l_0_1 = (string.sub)((mp.getfilename)(), -4, -4)
    if l_0_1 == "." then
      (mp.UfsSetMetadataBool)("Lua:AttachmentContainerExt", true)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

