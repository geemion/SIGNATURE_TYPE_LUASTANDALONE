-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/19d782cff62b6 

-- params : ...
-- function num : 0
if peattributes.amd64_image and peattributes.isexe then
  (mp.set_mpattribute)("HSTR:VirTool:Win64/Obfuscator.AKO")
  return mp.INFECTED
end
return mp.CLEAN

