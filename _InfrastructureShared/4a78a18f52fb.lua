-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/4a78a18f52fb 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("pea_isdll") and (mp.get_mpattribute)("pea_hasexports") and (mp.get_mpattribute)("pea_no_tls") and (mp.getfilesize)() < 32768 then
    local l_0_0 = (mp.GetCertificateInfo)()
    for l_0_4,l_0_5 in pairs(l_0_0) do
      if l_0_5.Signers ~= nil then
        return mp.CLEAN
      end
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

