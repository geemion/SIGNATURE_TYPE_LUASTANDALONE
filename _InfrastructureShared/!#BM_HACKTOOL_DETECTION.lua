-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#BM_HACKTOOL_DETECTION 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpContentDetected") and ((mp.get_mpattributesubstring)("Detection:HackTool:Win:") or (mp.get_mpattributesubstring)("Detection:VirTool:Win:")) then
  return mp.INFECTED
end
return mp.CLEAN

