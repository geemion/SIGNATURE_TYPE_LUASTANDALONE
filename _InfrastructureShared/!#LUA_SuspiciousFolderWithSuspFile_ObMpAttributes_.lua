-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_SuspiciousFolderWithSuspFile_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE or (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
  local l_0_0 = (string.lower)((mp.getfilename)())
  if l_0_0 == nil then
    return mp.CLEAN
  end
  if l_0_0:len() < 50 then
    return mp.CLEAN
  end
  if not l_0_0:find("\\downloads", 1, true) then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 1048576 then
    return mp.CLEAN
  end
  local l_0_2, l_0_3 = l_0_0:match("(.+\\)([^\\]+)$")
  if l_0_2 == nil then
    return mp.CLEAN
  end
  if l_0_2:len() > 40 and l_0_3 ~= nil then
    if l_0_2:find("\\users\\[^\\]+\\downloads\\[0-9a-f]+\\") == nil then
      return mp.CLEAN
    end
    local l_0_4 = l_0_2:match("\\downloads\\[0-9a-f]+\\")
    if l_0_4 == nil or l_0_4:len() < 44 then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("LUA:SuspFolderInDownloads.A")
    local l_0_5 = l_0_3:sub(-4)
    local l_0_6 = l_0_3:sub(-5)
    local l_0_7 = {}
    l_0_7[".doc"] = true
    l_0_7[".xls"] = true
    l_0_7[".rtf"] = true
    l_0_7[".docm"] = true
    l_0_7[".xlsm"] = true
    l_0_7[".ppam"] = true
    l_0_7[".pptm"] = true
    l_0_7[".ppsm"] = true
    l_0_7[".potm"] = true
    l_0_7[".docx"] = true
    l_0_7[".xlsx"] = true
    l_0_7[".jse"] = true
    l_0_7[".vbs"] = true
    l_0_7[".wsf"] = true
    l_0_7[".vbe"] = true
    l_0_7[".hta"] = true
    l_0_7[".mht"] = true
    l_0_7[".lnk"] = true
    l_0_7[".bat"] = true
    l_0_7[".ps1"] = true
    l_0_7[".cmd"] = true
    l_0_7[".url"] = true
    l_0_7[".exe"] = true
    l_0_7[".scr"] = true
    l_0_7[".pif"] = true
    l_0_7[".dll"] = true
    if l_0_7[l_0_5] == true or l_0_7[l_0_6] == true then
      (mp.set_mpattribute)("LUA:SuspFileInSuspFolder.A")
    end
  end
end
do
  return mp.CLEAN
end

