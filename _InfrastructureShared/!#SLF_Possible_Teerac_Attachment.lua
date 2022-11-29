-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_Possible_Teerac_Attachment 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if peattributes.isdll then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilesize)()
  if l_0_1 > 17664 and l_0_1 < 1200128 then
    local l_0_2 = pe.query_import
    if l_0_2(pe.IMPORT_STATIC, 4288984855) == 0 then
      return mp.CLEAN
    end
    if l_0_2(pe.IMPORT_STATIC, 3419395426) == 0 and l_0_2(pe.IMPORT_STATIC, 1058758707) == 0 then
      return mp.CLEAN
    end
    local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME))
    local l_0_4 = (string.sub)(l_0_3, -4)
    if (l_0_4 == ".zip" or l_0_4 == ".exe") and (l_0_3:find("aupost_info_", 1, true) ~= nil or l_0_3:find("auspost_info_", 1, true) ~= nil or l_0_3:find("enel_bolletta", 1, true) ~= nil or l_0_3:find("postdanmark_pakkeboksen", 1, true) ~= nil or l_0_3:find("postnord_info_", 1, true) ~= nil or l_0_3:find("posten_adresselapp", 1, true) ~= nil or l_0_3:find("turkcell_fatura", 1, true) ~= nil or l_0_3:find("turkcell_efatura", 1, true) ~= nil or l_0_3:find("turkcell_mart_fatura", 1, true) ~= nil or l_0_3:find("carta_certificada", 1, true) ~= nil or l_0_3:find("dhl_versandschein", 1, true) ~= nil or l_0_3:find("turkcell_subat_fatura", 1, true) ~= nil or l_0_3:find("poczta_track", 1, true) ~= nil) then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

