-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7478bd89c5d6 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:(VFS:install.exe)") then
  return mp.INFECTED
end
return mp.CLEAN

