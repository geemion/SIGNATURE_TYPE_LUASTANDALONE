-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Pdumpint.a 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("HSTR:Pdumpint.A") then
    local l_0_0 = (mp.getfilename)()
    if (string.find)(l_0_0, "pd.exe") ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

