-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/65b3828a9c00 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
local l_0_2 = false
for l_0_6,l_0_7 in ipairs(l_0_0) do
  if l_0_7.image_path ~= nil then
    l_0_2 = true
    if (string.find)(l_0_7.image_path, "\\MSBuild%.exe$") ~= nil or (string.find)(l_0_7.image_path, "\\devenv%.exe$") ~= nil or (string.find)(l_0_7.image_path, "\\K2Studio%.exe$") ~= nil then
      return mp.CLEAN
    end
    ;
    (bm.add_related_file)(l_0_7.image_path)
  end
end
if l_0_2 then
  return mp.INFECTED
end
return mp.CLEAN

