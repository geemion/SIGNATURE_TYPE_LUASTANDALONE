-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#LUA_ContextualDubiousExeFileName.A 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 5242880 then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_1 = {}
  l_0_1["2014"] = true
  l_0_1.deutschland = true
  l_0_1.dezember = true
  l_0_1.informationen = true
  l_0_1.kontobewegung = true
  l_0_1.november = true
  l_0_1.online = true
  l_0_1.order = true
  l_0_1.purchase = true
  l_0_1.rechnung = true
  l_0_1.team = true
  l_0_1.telekom = true
  l_0_1.transaktions = true
  l_0_1.vodafone = true
  local l_0_2 = 0
  local l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
  for l_0_7 in (string.gmatch)(l_0_3, "%w+") do
    if l_0_1[l_0_7] then
      l_0_2 = l_0_2 + 1
    end
  end
  if l_0_2 >= 2 then
    return mp.LOWFI
  end
end
do
  return mp.CLEAN
end

