-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b333cb4e67 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if (string.sub)(l_0_0, -13) == "\\sqlservr.exe" or (string.sub)(l_0_0, -13) == "\\sqlagent.exe" then
  return mp.INFECTED
end
local l_0_1, l_0_2 = (bm.get_process_relationships)()
for l_0_6,l_0_7 in ipairs(l_0_1) do
  if l_0_7.image_path ~= nil and (mp.bitand)(l_0_7.reason_ex, 1) == 1 and ((string.lower)((string.sub)(l_0_7.image_path, -13)) == "\\sqlservr.exe" or (string.lower)((string.sub)(l_0_7.image_path, -13)) == "\\sqlagent.exe") then
    return mp.INFECTED
  end
end
return mp.CLEAN

