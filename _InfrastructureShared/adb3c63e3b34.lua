-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/adb3c63e3b34 

-- params : ...
-- function num : 0
checkChildProcessExist = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil or l_1_1 == nil or type(l_1_1) ~= "table" then
    return nil
  end
  local l_1_2, l_1_3 = (bm.get_process_relationships)(l_1_0)
  for l_1_7,l_1_8 in ipairs(l_1_3) do
    if (mp.bitand)(l_1_8.reason_ex, 1) == 1 then
      local l_1_9 = l_1_8.image_path
      for l_1_13,l_1_14 in ipairs(l_1_1) do
        if (string.sub)(l_1_9, -(string.len)(l_1_14)) == l_1_14 then
          return l_1_8.ppid
        end
      end
    end
  end
  do return nil end
  -- DECOMPILER ERROR at PC50: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end

local l_0_0 = (mp.ContextualExpandEnvironmentVariables)("%windir%\\system32\\LogonUI.exe")
local l_0_1 = (sysio.GetProcessFromFileName)(l_0_0)
if l_0_1 == nil or #l_0_1 == 0 then
  return mp.CLEAN
end
local l_0_2 = nil
if (this_sigattrlog[1]).matched then
  l_0_2 = (this_sigattrlog[1]).ppid
else
  if (this_sigattrlog[2]).matched then
    l_0_2 = (this_sigattrlog[2]).ppid
  else
    if (this_sigattrlog[3]).matched then
      l_0_2 = (this_sigattrlog[3]).ppid
    else
      if (this_sigattrlog[4]).matched then
        l_0_2 = (this_sigattrlog[4]).ppid
      else
        if (this_sigattrlog[5]).matched then
          l_0_2 = (this_sigattrlog[5]).ppid
        else
          if (this_sigattrlog[6]).matched then
            l_0_2 = (this_sigattrlog[6]).ppid
          end
        end
      end
    end
  end
end
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = {}
-- DECOMPILER ERROR at PC79: No list found for R3 , SetList fails

-- DECOMPILER ERROR at PC80: Overwrote pending register: R4 in 'AssignReg'

if ("conhost.exe")(l_0_2, l_0_3) == nil then
  return mp.CLEAN
end
return mp.INFECTED

