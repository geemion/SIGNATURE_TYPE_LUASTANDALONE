-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/32b3739bf1fe_Includes_ResearchData,BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
local l_0_0 = (this_sigattrlog[1]).utf8p2
;
(bm.add_related_string)("FirstTime", l_0_0, bm.RelatedStringBMReport)
;
(bm.set_detection_string)(l_0_0)
reportSessionInformation()
add_parents()
return mp.INFECTED

