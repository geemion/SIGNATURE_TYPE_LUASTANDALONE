-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/85b33f680ae7 

-- params : ...
-- function num : 0
if not (MpCommon.QueryPersistContext)((bm.get_imagepath)(), "RunsDestructiveCMDsParentBlock") then
  return mp.CLEAN
end
return mp.INFECTED

