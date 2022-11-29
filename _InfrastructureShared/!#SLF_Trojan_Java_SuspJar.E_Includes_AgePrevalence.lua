-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Trojan_Java_SuspJar.E_Includes_AgePrevalence 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (sysio.GetFileLastWriteTime)(l_0_0)
if ((sysio.GetLastResult)()).Success and l_0_1 ~= 0 then
  l_0_1 = l_0_1 / 10000000 - 11644473600
end
local l_0_2 = (MpCommon.GetCurrentTimeT)()
if l_0_2 < l_0_1 or l_0_2 - (l_0_1) > 345600 then
  return mp.CLEAN
end
local l_0_3, l_0_4 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_3 == nil or l_0_4 == nil then
  return mp.CLEAN
end
if (string.match)(l_0_3, "\\program files\\") or (string.match)(l_0_3, "\\program files (x86)\\") or (string.match)(l_0_3, "\\apache\\") or (string.match)(l_0_3, "\\oracle\\") or (string.match)(l_0_3, "\\eclipse\\") or (string.match)(l_0_3, "\\org.eclipse.") or (string.match)(l_0_3, "\\netbeans\\") or (string.match)(l_0_3, "\\onedrive\\") or (string.match)(l_0_3, "\\modules\\") or (string.match)(l_0_3, "\\lib\\") or (string.match)(l_0_3, "\\repository\\") or (string.match)(l_0_3, "\\plugin") or (string.match)(l_0_3, "\\bin\\") or (string.match)(l_0_3, "minecraft\\") then
  (mp.set_mpattribute)("Lua:JarPathExclusionList")
end
do
  if not (mp.get_mpattribute)("LUA:FileSizeGT4M.A") and not (mp.get_mpattribute)("Lua:JarPathExclusionList") and (mp.get_mpattribute)("Lua:HasMotw") then
    local l_0_5 = getAgePrev(false)
    if false <= 100 then
      return mp.INFECTED
    end
  end
  local l_0_6 = mp.CLEAN
  return l_0_6
end

