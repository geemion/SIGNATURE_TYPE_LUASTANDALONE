-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_Possible_Teerac_Attachment 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if peattributes.isdll then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 17664 and l_0_1 < 1200128 then
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    local l_0_3 = (string.sub)(l_0_2, -4)
    if (l_0_3 == ".zip" or l_0_3 == ".rar" or l_0_3 == ".exe" or l_0_3 == ".pif" or l_0_3 == ".scr") and (l_0_2:find("adres", 1, true) ~= nil or l_0_2:find("pacchetto", 1, true) ~= nil or l_0_2:find("fatura", 1, true) ~= nil or l_0_2:find("carta_certificada", 1, true) ~= nil or l_0_2:find("notice_", 1, true) ~= nil or l_0_2:find("bolletta_", 1, true) ~= nil or l_0_2:find("enel_bolletta", 1, true) ~= nil or l_0_2:find("info_", 1, true) ~= nil or l_0_2:find("turkcell_", 1, true) ~= nil or l_0_2:find("posten_", 1, true) ~= nil or l_0_2:find("forsandelse", 1, true) ~= nil or l_0_2:find("forsendelse", 1, true) ~= nil or l_0_2:find("leverans", 1, true) ~= nil or l_0_2:find("postnord_", 1, true) ~= nil or l_0_2:find("adresselapp", 1, true) ~= nil or l_0_2:find("postdanmark_", 1, true) ~= nil or l_0_2:find("auspost_", 1, true) ~= nil or l_0_2:find("aupost_", 1, true) ~= nil or l_0_2:find("infringement_", 1, true) ~= nil) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

