-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19b3798402ce 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (string.match)((this_sigattrlog[1]).utf8p1, "\\Program Files\\Common Files\\Microsoft Shared\\Web Server Extensions\\") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED

