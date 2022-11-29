-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_GatakNsisSfxChildExe.A!dha_ObMpAttributes_ 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("SCRIPT:GatakNsisInstData") then
    local l_0_0 = (mp.getfilesize)()
    if l_0_0 < 3000 or l_0_0 > 4000 then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("//GatakNsisInstData")
    return mp.CLEAN
  end
  do
    if (mp.get_mpattribute)("//GatakNsisInstData") then
      local l_0_1 = (string.lower)((mp.getfilename)())
      if l_0_1 ~= nil then
        if (string.find)(l_0_1, "%(nsis%-6%-%d+%.exe%)$") then
          return mp.INFECTED
        end
        if (string.find)(l_0_1, "%(nsis%-6%-install%d+%.exe%)$") then
          return mp.INFECTED
        end
        if (string.find)(l_0_1, "%(nsis%-6%-setup%d+%.exe%)$") then
          return mp.INFECTED
        end
      end
    end
    return mp.CLEAN
  end
end

