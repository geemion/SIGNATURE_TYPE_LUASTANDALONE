-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4e29deccccac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Lua:ASPXExt") or (mp.get_mpattribute)("Lua:ASPExt") then
  return mp.INFECTED
end
return mp.LOWFI

