-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2db36ec0c8fc 

-- params : ...
-- function num : 0
if not (this_sigattrlog[1]).matched and (this_sigattrlog[2]).matched then
  return mp.INFECTED
end
return mp.CLEAN

