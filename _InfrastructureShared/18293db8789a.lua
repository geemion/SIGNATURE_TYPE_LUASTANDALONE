-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/18293db8789a 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = tostring(l_0_0.is_header and headerpage or footerpage)
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (string.len)("<signature>\r\n")
local l_0_3 = l_0_0.match_offset + l_0_2
if l_0_0.is_footer and (string.sub)(l_0_1, 1, 1) == "\000" then
  _ = (string.find)(l_0_1, "<signature>[\r\n]*")
end
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = (string.find)(l_0_1, "[%w=][^%w=]*</signature>", l_0_0.match_offset)
if not l_0_4 then
  return mp.CLEAN
end
l_0_1 = (string.sub)(l_0_1, l_0_3, l_0_4 - 1)
if not l_0_1 then
  return mp.CLEAN
end
l_0_1 = (string.gsub)(l_0_1, "%s*[\r\n]+..%sSIG%s..%s*", "")
if not l_0_1 or #l_0_1 < 2 then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)((MpCommon.Base64Decode)(l_0_1), "[ScriptSig]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
;
(mp.UfsSetMetadataBool)("ScriptSigDecoded", true, true)
return mp.INFECTED

