-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/97b3077d2b0b 

-- params : ...
-- function num : 0
do
  if not (this_sigattrlog[1]).matched or not this_sigattrlog[1] then
    local l_0_0, l_0_1 = this_sigattrlog[2]
  end
  -- DECOMPILER ERROR at PC11: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0.utf8p2 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_0.utf8p2)) do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC27: Confused about usage of register: R6 in 'UnsetPending'

    if (string.lower)(R6_PC27) ~= (string.lower)(l_0_2.image_path) and (sysio.IsFileExists)(R6_PC27) and #R6_PC27 >= 18 and ((string.sub)(R6_PC27, -18) == ".devicemanifest-ms" or (string.sub)(R6_PC27, -18) == ".devicemetadata-ms") then
      (bm.add_threat_file)(R6_PC27)
    end
  end
  return mp.INFECTED
end

