-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_PU2RD.2 

-- params : ...
-- function num : 0
if ((mp.getfilename)()):sub(-14) ~= "->(PdfUriList)" then
  return mp.CLEAN
end
local l_0_0 = 10
local l_0_1 = 8
local l_0_2 = 4000
local l_0_3 = (mp.getfilesize)()
if l_0_3 == nil or l_0_3 == 0 or l_0_3 < l_0_1 then
  return mp.CLEAN
end
if l_0_2 < l_0_3 then
  l_0_3 = l_0_2
  local l_0_4 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE))
  ;
  (mp.ReportLowfi)(l_0_4, 2981785463)
end
do
  ;
  (mp.readprotection)(false)
  local l_0_5 = (mp.readfile)(0, l_0_3)
  if l_0_5 == nil or l_0_5:len() ~= l_0_3 then
    return mp.CLEAN
  end
  if (mp.get_mpattribute)("MpInternal_IsPliScan") then
    local l_0_6 = {}
    for l_0_10 in (string.gmatch)(l_0_5, "([^" .. "\n\r" .. "]+)") do
      if l_0_10:len() >= 12 and l_0_10:sub(1, 4) == "http" and l_0_6[l_0_10] ~= 1 then
        l_0_6[l_0_10] = 1
      end
    end
    local l_0_11 = 0
    for l_0_15,l_0_16 in pairs(l_0_6) do
      if l_0_0 < l_0_11 then
        break
      end
      l_0_11 = l_0_11 + 1
      ;
      (mp.set_mpattribute)("Lua:PdfUri_" .. l_0_15)
    end
    do
      do
        ;
        (mp.set_mpattribute)("Lua:PdfUriCount_" .. l_0_11)
        local l_0_17 = (MpCommon.Base64Encode)(l_0_5)
        if l_0_17 ~= nil and l_0_17:len() >= 16 then
          (mp.set_mpattribute)("MpInternal_researchdata=pdfuri2=" .. l_0_17)
        end
        local l_0_18, l_0_19 = (mp.UfsGetMetadataBool)("Lua:PampaPU2RD", true)
        if l_0_18 == 0 and l_0_19 == true then
          (mp.set_mpattribute)("Lua:PampaPU2RD")
        end
        return mp.INFECTED
      end
    end
  end
end

