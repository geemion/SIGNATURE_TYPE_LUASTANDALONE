-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/81b302882bc2 

-- params : ...
-- function num : 0
local l_0_2 = nil
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = "|.js|jse|vbs|vbe|"
  end
  if l_0_2 ~= nil then
    local l_0_3 = nil
    for l_0_7,l_0_8 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_2)) do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC26: Confused about usage of register: R7 in 'UnsetPending'

      if (sysio.IsFileExists)(R7_PC26) and (string.find)(l_0_3, (string.lower)((string.sub)(R7_PC26, -3)), 1, true) then
        (bm.add_related_file)(l_0_9)
      end
    end
  end
  do
    return mp.INFECTED
  end
end

