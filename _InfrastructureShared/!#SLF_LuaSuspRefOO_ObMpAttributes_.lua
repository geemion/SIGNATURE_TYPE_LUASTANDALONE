-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_LuaSuspRefOO_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1536000 then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_1:find("\\downloads", 1, true) then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3[".xls->"] = "%.xls%->.+"
l_0_3["xlsx->"] = "%.xlsx%->.+"
l_0_3[".doc->"] = "%.doc%->.+"
l_0_3["docx->"] = "%.docx%->.+"
l_0_3[".rtf->"] = "%.rtf%->.+"
l_0_3["xlsm->"] = "%.xlsm%->.+"
l_0_3["xlsb->"] = "%.xlsb%->.+"
l_0_3["xltx->"] = "%.xltx%->.+"
l_0_3["xltm->"] = "%.xltm%->.+"
l_0_3["xlam->"] = "%.xlam%->.+"
l_0_3[".xla->"] = "%.xla%->.+"
l_0_3["docm->"] = "%.docm%->.+"
l_0_3["dotx->"] = "%.dotx%->.+"
l_0_3["dotm->"] = "%.dotm%->.+"
l_0_3[".ppt->"] = "%.ppt%->.+"
l_0_3["pptm->"] = "%.pptm%->.+"
l_0_3[".pps->"] = "%.pps%->.+"
l_0_3["pptx->"] = "%.pptx%->.+"
l_0_3["ppsx->"] = "%.ppsx%->.+"
l_0_3[".odt->"] = "%.odt%->.+"
l_0_3[".xml->"] = "%.xml%->.+"
for l_0_7,l_0_8 in pairs(l_0_3) do
  if (string.find)(l_0_2, l_0_7, 1, true) then
    local l_0_9 = (string.match)(l_0_2, l_0_8)
    if l_0_9 == nil or l_0_9:len() < 12 then
      return mp.CLEAN
    end
    if l_0_9:find("sheets/", 1, true) then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

