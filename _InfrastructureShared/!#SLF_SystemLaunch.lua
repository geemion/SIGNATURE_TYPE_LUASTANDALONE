-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SLF_SystemLaunch 

-- params : ...
-- function num : 0
if peattributes.isdll or peattributes.isdamaged then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_ID)
  if l_0_0 == 4 then
    local l_0_1 = ((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)):lower()
    if l_0_1 == "cmd.exe" then
      (mp.set_mpattribute)("TEL:SystemLaunchCmd")
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

