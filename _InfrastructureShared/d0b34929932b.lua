-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d0b34929932b 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2 = nil, nil, nil
local l_0_6 = nil
if (string.lower)((string.sub)((bm.get_imagepath)(), -12)) == "\\msiexec.exe" then
  local l_0_4 = nil
  local l_0_3 = R2_PC21
  -- DECOMPILER ERROR at PC29: Overwrote pending register: R3 in 'AssignReg'

  do
    do
      if l_0_4 ~= nil then
        local l_0_5 = nil
        if (sysio.IsFileExists)(l_0_5) then
          (bm.add_threat_file)(l_0_5)
        end
      end
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

