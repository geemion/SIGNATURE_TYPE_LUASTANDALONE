-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/1540ae840cf4 

-- params : ...
-- function num : 0
do
  if not peattributes.hasappendeddata then
    local l_0_0 = pehdr.NumberOfSections
    if (pesecs[l_0_0]).SizeOfRawData > 3670016 then
      (mp.set_mpattribute)("AutoItIgnoreMaxSizes")
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

