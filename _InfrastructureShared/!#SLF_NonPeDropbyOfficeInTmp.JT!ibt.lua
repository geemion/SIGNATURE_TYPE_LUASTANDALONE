-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_NonPeDropbyOfficeInTmp.JT!ibt 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if (mp.getfilesize)() > 5000 then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_1 == "excel.exe" or l_0_1 == "winword.exe" or l_0_1 == "powerpnt.exe" then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    local l_0_4 = (string.sub)(l_0_3, -4)
    if l_0_4 == "gdat" then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("Lua:SmlFileDropFrmOfc")
    if (mp.get_mpattribute)("BM_LNK_FILE") or l_0_4 == ".cmd" or l_0_4 == ".lnk" or l_0_4 == ".url" then
      (mp.set_mpattribute)("Lua:NonPeExecDropbyOffice")
      if (string.find)(l_0_2, "\\appdata\\local\\temp", 1, true) ~= nil or (string.find)(l_0_2, "\\local settings\\temp", 1, true) ~= nil then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

