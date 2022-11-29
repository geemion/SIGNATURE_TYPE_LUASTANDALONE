-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_SamSamTools_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH))
  local l_0_2 = (string.lower)((string.sub)(l_0_0, 1, 11))
  if l_0_2 ~= "\\\\tsclient\\" then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("Lua:RDPProcExec")
  if (string.lower)(l_0_1) == "worker.exe" then
    (mp.set_mpattribute)("Lua:SamSamWorker")
    return mp.INFECTED
  end
  local l_0_3 = (string.lower)((string.sub)(l_0_0, 12, 20))
  local l_0_4 = {}
  l_0_4.kali = 1
  l_0_4.kalilinux = 1
  l_0_4.pencha = 1
  l_0_4.sila = 1
  l_0_4.pendekar = 1
  l_0_4.pende5 = 1
  l_0_4["b\\sqll"] = 2
  l_0_4["b\\sql"] = 2
  l_0_4["b\\01"] = 2
  l_0_4["b\\1"] = 2
  if l_0_4[l_0_3] == 1 then
    (mp.set_mpattribute)("Lua:SamSamMachine")
    return mp.INFECTED
  else
    if l_0_4[l_0_3] == 2 then
      (mp.set_mpattribute)("Lua:SamSamPpl")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

