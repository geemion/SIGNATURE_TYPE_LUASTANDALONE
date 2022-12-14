-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/21db348a4e9d8 

-- params : ...
-- function num : 0
local l_0_0 = (versioning.GetOrgID)()
if l_0_0 ~= nil and (string.lower)(l_0_0) == "40222833-e511-47af-9324-40c4531ba777" then
  return mp.CLEAN
end
local l_0_1 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).utf8p2
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_1 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_1 = (this_sigattrlog[3]).utf8p2
    else
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
        l_0_1 = (this_sigattrlog[4]).utf8p2
      else
        if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
          l_0_1 = (this_sigattrlog[5]).utf8p2
        else
          if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
            l_0_1 = (this_sigattrlog[6]).utf8p2
          end
        end
      end
    end
  end
end
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2[".jse"] = true
l_0_2[".vbe"] = true
local l_0_3 = (mp.GetExecutablesFromCommandLine)(l_0_1)
for l_0_7,l_0_8 in ipairs(l_0_3) do
  if (string.len)(l_0_8) > 4 and (sysio.IsFileExists)(l_0_8) then
    local l_0_9 = (string.sub)(l_0_8, -4)
    if l_0_2[l_0_9] then
      if (string.find)((string.lower)(l_0_8), "themefonts-colors_installer.vbe", 1, true) then
        return mp.CLEAN
      end
      local l_0_10 = (mp.IsKnownFriendlyFile)(l_0_8, true, true)
      if l_0_10 == nil or l_0_10 == true then
        return mp.CLEAN
      end
      ;
      (bm.add_threat_file)(l_0_8)
    end
  end
end
return mp.INFECTED

