-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/25b37c4eb870 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC5: No list found for R0 , SetList fails

local l_0_1 = {}
-- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC9: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC16: No list found for R1 , SetList fails

local l_0_2 = {}
-- DECOMPILER ERROR at PC18: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC19: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC20: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC21: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC22: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC23: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC24: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC25: Overwrote pending register: R10 in 'AssignReg'

-- DECOMPILER ERROR at PC68: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC69: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC70: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC71: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC72: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC73: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC74: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC75: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC76: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC78: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC80: Overwrote pending register: R5 in 'AssignReg'

local l_0_3 = (("firefox.exe").lower)((("chrome.exe").PathToWin32Path)((("hh.exe").get_imagepath)()))
local l_0_4 = l_0_3:match("(%w+%.exe)$")
if l_0_4 == nil then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC97: Overwrote pending register: R7 in 'AssignReg'

local l_0_5 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("bfsvc.exe"))
-- DECOMPILER ERROR at PC104: Overwrote pending register: R8 in 'AssignReg'

local l_0_6 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("write.exe"))
-- DECOMPILER ERROR at PC111: Overwrote pending register: R9 in 'AssignReg'

local l_0_7 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("splwow64.exe"))
-- DECOMPILER ERROR at PC118: Overwrote pending register: R10 in 'AssignReg'

local l_0_8 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("helppane.exe"))
-- DECOMPILER ERROR at PC125: Overwrote pending register: R11 in 'AssignReg'

do
  local l_0_9 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("regsvr32.exe"))
  -- DECOMPILER ERROR at PC131: Overwrote pending register: R12 in 'AssignReg'

  if (l_0_8 ~= nil and l_0_3:find("userinit.exe")) or l_0_9 ~= nil and l_0_3:find(l_0_9) then
    for l_0_13,l_0_14 in pairs(l_0_0) do
      -- DECOMPILER ERROR at PC148: Overwrote pending register: R15 in 'AssignReg'

      if l_0_14 == l_0_4 then
        return ("secedit.exe").INFECTED
      end
    end
    return mp.CLEAN
  end
  if l_0_5 ~= nil then
    if l_0_3:find(l_0_6) or l_0_3:find(l_0_7) then
      for l_0_18,l_0_19 in pairs(l_0_2) do
        if l_0_19 == l_0_4 then
          return mp.INFECTED
        end
      end
      return mp.CLEAN
    else
      if l_0_3:find(l_0_5) then
        for l_0_23,l_0_24 in pairs(l_0_1) do
          if l_0_24 == l_0_4 then
            return mp.INFECTED
          end
        end
        return mp.CLEAN
      end
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

