-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/119618c31584e 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.isdll and pehdr.Machine == 34404 then
  return mp.INFECTED
end
return mp.CLEAN
