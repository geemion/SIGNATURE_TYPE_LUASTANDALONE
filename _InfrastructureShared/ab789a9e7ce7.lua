-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ab789a9e7ce7 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).OriginalFilename == "svhost.exe" then
  return mp.INFECTED
end
return mp.LOWFI

