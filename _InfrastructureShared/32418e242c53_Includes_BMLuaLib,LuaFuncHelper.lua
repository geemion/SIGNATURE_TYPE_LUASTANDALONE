-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/32418e242c53_Includes_BMLuaLib,LuaFuncHelper 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    if not contains(l_0_2, {"getParameter", "cmd=", "InputStream", "webapps//ROOT//", "class", "suffix", "tomcatwar", "whoami", "pwd"}) then
      return mp.CLEAN
    end
    local l_0_3 = nil
    do
      do
        if (nri.GetRawRequestBlob)() ~= nil and (string.len)((nri.GetRawRequestBlob)()) < 4096 then
          local l_0_4 = nil
          ;
          (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), {NRI_ResponseBlob = tohex(l_0_4)})
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

