-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7eb31e5265ee 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = nil
else
  do
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

    if (string.match)(l_0_0, "bypass.+%-c.+servercertificatevalidationcallback.*=.*%{.*%$true.+iex.+system%.net%.webclient.+downloadstring.+http") ~= nil then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

