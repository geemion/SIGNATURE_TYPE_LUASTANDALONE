-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/91b383b5d381_Includes_TechniqueTracker,BMLuaLib 

-- params : ...
-- function num : 0
TrackPidAndTechniqueBM("BM", "T1059.006", "Execution")
TrackPidAndTechniqueBM("BM", "T1071.001", "CommandAndControl")
addRelatedProcess()
return mp.INFECTED

