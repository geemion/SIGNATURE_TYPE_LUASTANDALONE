-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_TrojanDownloader_JS_ObfJsDownloader_ObMpAttributes_ 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = {}
l_0_0["wscript.exe"] = true
l_0_0["cscript.exe"] = true
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if not l_0_0[l_0_1] then
  return mp.CLEAN
end
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_3 = (string.lower)((mp.GetProcessCommandLine)(l_0_2))
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if not l_0_4 then
  return mp.CLEAN
end
local l_0_5 = "programdata\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}$"
if not (string.find)(l_0_4, l_0_5) and not (string.find)(l_0_3, "--iserik") then
  return mp.CLEAN
end
hexToAscii = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 = 1, #l_1_0, 2 do
    local l_1_10 = nil
    l_1_10 = #l_1_1
    l_1_10 = l_1_10 + 1
    local l_1_6, l_1_11 = nil
    l_1_6 = string
    l_1_6 = l_1_6.char
    l_1_11 = tonumber
    do
      local l_1_13, l_1_14, l_1_15, l_1_16, l_1_17 = .end
      l_1_6 = l_1_6(l_1_11(l_1_0:sub(l_1_5, l_1_5 + 1), 16), l_1_13, l_1_14, l_1_15, l_1_16, l_1_17)
      local l_1_12 = nil
      l_1_1[l_1_10] = l_1_6
      -- DECOMPILER ERROR at PC18: Confused about usage of register R8 for local variables in 'ReleaseLocals'

      -- DECOMPILER ERROR at PC18: LeaveBlock: unexpected jumping out DO_STMT

    end
  end
  local l_1_7 = nil
  local l_1_8 = nil
  local l_1_9 = nil
  return (table.concat)(l_1_1, "")
end

for l_0_9 in (string.gmatch)(l_0_3, "(%x%x%x%x[%x]+)") do
  if not l_0_9:find("^68747470") then
    l_0_9 = (string.lower)(hexToAscii(l_0_9))
    if l_0_9 then
      local l_0_10 = MpCommon.SetPersistContext
      local l_0_11 = l_0_9
      local l_0_12 = {}
      -- DECOMPILER ERROR at PC106: No list found for R12 , SetList fails

      -- DECOMPILER ERROR at PC107: Overwrote pending register: R13 in 'AssignReg'

      l_0_10(l_0_11, l_0_12, "isErik")
    end
  end
end
return mp.INFECTED

