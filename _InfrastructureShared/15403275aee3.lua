-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/15403275aee3 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:DelphiFile") and (mp.get_mpattribute)("SIGATTR:OpensBHOKey") then
  return mp.LOWFI
end
return mp.CLEAN

