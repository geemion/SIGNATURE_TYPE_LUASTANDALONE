-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/209784eb53fe1 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_ismsil") and (mp.get_mpattribute)("pea_no_exports") and (mp.get_mpattribute)("pea_no_tls") then
  do
    if (mp.getfilesize)() < 47872 then
      local l_0_0 = (mp.GetCertificateInfo)()
      for l_0_4,l_0_5 in pairs(l_0_0) do
        if l_0_5.Signers ~= nil then
          return mp.CLEAN
        end
      end
      return mp.INFECTED
    end
    if (mp.getfilesize)() >= 47872 and (mp.getfilesize)() < 57088 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

