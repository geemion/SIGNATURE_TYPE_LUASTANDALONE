-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/7d4173859941 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p1)
  if l_0_0 == nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, "prefix=tomcatwar", 1, true) and (string.find)(l_0_0, "java.io.inputstream", 1, true) and (string.find)(l_0_0, "class.module.classloader", 1, true) then
    local l_0_1 = {}
    l_0_1.useragent = (nri.GetHttpRequestHeader)("User-Agent")
    ;
    (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_1)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

