-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Lua_ContextualOfficeCreateRunnableContent.B!asrx 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = {}
l_0_0["cmd.exe"] = true
l_0_0["conhost.exe"] = true
l_0_0["cscript.exe"] = true
l_0_0["java.exe"] = true
l_0_0["javaw.exe"] = true
l_0_0["mshta.exe"] = true
l_0_0["powershell.exe"] = true
l_0_0["rundll32.exe"] = true
l_0_0["wscript.exe"] = true
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
l_0_1 = (l_0_1 == nil and "" or l_0_1):lower()
if l_0_0[l_0_1] ~= true then
  return mp.CLEAN
end
local l_0_2 = (MpCommon.GetPersistContext)((mp.getfilename)())
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = false
for l_0_7,l_0_8 in ipairs(l_0_2) do
  if (string.lower)(l_0_8) == "contextualofficecreaterunnablecontent" then
    l_0_3 = true
    break
  end
end
do
  if not l_0_3 then
    return mp.CLEAN
  end
  return mp.INFECTED
end

