-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/45b3583022c8 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -15))
if l_0_0 == "\\appvclient.exe" then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p2
end
local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
if l_0_2 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
    ;
    (bm.add_related_file)(l_0_7)
  end
end
do
  return mp.INFECTED
end

