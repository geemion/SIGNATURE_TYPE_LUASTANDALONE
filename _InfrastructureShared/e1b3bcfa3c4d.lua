-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e1b3bcfa3c4d 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (string.lower)((string.sub)((this_sigattrlog[2]).utf8p1, -22)) == "easeofaccessdialog.exe" then
  return mp.CLEAN
end
return mp.INFECTED

