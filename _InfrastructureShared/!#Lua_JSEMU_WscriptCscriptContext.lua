-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_JSEMU_WscriptCscriptContext 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
if (l_0_0:sub(-3)):lower() ~= ".js" then
  return mp.CLEAN
end
local l_0_1 = ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()
local l_0_2 = l_0_1:match("[^\\]+$")
local l_0_3 = {}
l_0_3["iexplore.exe"] = ""
l_0_3["chrome.exe"] = ""
l_0_3["firefox.exe"] = ""
if l_0_2 == nil or l_0_3[l_0_2] then
  return mp.CLEAN
end
if l_0_2 == "wscript.exe" or l_0_2 == "cscript.exe" then
  return mp.INFECTED
end
if not l_0_0:find("^%l+%.js") then
  return mp.CLEAN
end
string_starts = function(l_1_0, l_1_1)
  -- function num : 0_0
  do return (string.sub)(l_1_0, 1, (string.len)(l_1_1)) == l_1_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

IsWscriptCopyMadeByBondat = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = {}
  -- DECOMPILER ERROR at PC12: No list found for R1 , SetList fails

  local l_2_2 = {}
  -- DECOMPILER ERROR at PC14: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC15: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC16: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC17: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC18: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC19: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC20: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC22: Overwrote pending register: R11 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: No list found for R2 , SetList fails

  local l_2_3 = {}
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC26: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC27: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC28: No list found for R3 , SetList fails

  -- DECOMPILER ERROR at PC29: Overwrote pending register: R4 in 'AssignReg'

  local l_2_4 = "disk"
  -- DECOMPILER ERROR at PC30: Overwrote pending register: R5 in 'AssignReg'

  local l_2_5 = "dsk"
  -- DECOMPILER ERROR at PC31: Overwrote pending register: R6 in 'AssignReg'

  do
    local l_2_6 = "ms"
    -- DECOMPILER ERROR at PC32: Overwrote pending register: R7 in 'AssignReg'

    -- DECOMPILER ERROR at PC33: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC34: Overwrote pending register: R9 in 'AssignReg'

    for l_2_10 = "hp", "intel", "amd" do
      -- DECOMPILER ERROR at PC36: Overwrote pending register: R11 in 'AssignReg'

      -- DECOMPILER ERROR at PC37: Overwrote pending register: R12 in 'AssignReg'

      if ("tcp")("udp", l_2_1[l_2_10]) then
        for l_2_14 = 1, l_2_5 do
          if string_starts((string.sub)(l_2_0, (string.len)(l_2_1[l_2_10]) + 1), l_2_2[l_2_14]) then
            for l_2_18 = 1, l_2_6 do
              if (string.sub)(l_2_0, (string.len)(l_2_1[l_2_10]) + (string.len)(l_2_2[l_2_14]) + 1) == l_2_3[l_2_18] then
                return true
              end
            end
          end
        end
      end
    end
    do return false end
    -- WARNING: undefined locals caused missing assignments!
  end
end

if IsWscriptCopyMadeByBondat(l_0_2) == true then
  local l_0_4 = ((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))):lower()
  if l_0_1:find("\\appdata\\roaming\\%l+\\%l+[63]?[42]?%.exe$") and (l_0_4:find("\\appdata\\roaming\\%l+$") or l_0_4:find("\\%.trashes\\%d+$")) then
    (mp.set_mpattribute)("Lua:BondatContextualWscriptRunWithPath_GenFirst")
    return mp.INFECTED
  end
  local l_0_5 = {}
  l_0_5["dllhost.exe"] = ""
  l_0_5["winprocess.exe"] = ""
  l_0_5["winupdate32.exe"] = ""
  l_0_5["winhost32.exe"] = ""
  l_0_5["msupdate.exe"] = ""
  l_0_5["winupdate.exe"] = ""
  l_0_5["mshost.exe"] = ""
  if not l_0_5[l_0_2] then
    (mp.set_mpattribute)("Lua:BondatContextualWscriptRun")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

