-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/8278aa752d33 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:FindAvastAV") and (mp.get_mpattribute)("SIGATTR:ExCheckInstalledAV") and (mp.get_mpattribute)("SIGATTR:DirectoryWalkerVfs") and (mp.get_mpattribute)("SIGATTR:FindBaiuduAV") then
  return mp.INFECTED
end
return mp.CLEAN

