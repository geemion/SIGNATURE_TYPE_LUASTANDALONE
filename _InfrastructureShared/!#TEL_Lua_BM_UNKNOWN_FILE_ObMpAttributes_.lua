-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#TEL_Lua_BM_UNKNOWN_FILE_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 256 or l_0_0 > 1048576 then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONFIRSTREAD then
  if (mp.get_mpattribute)("BM_UNKNOWN_FILE") then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattributeex)("Lua:HdrDdVal", (mp.readu_u32)(headerpage, 1))
else
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    if not (mp.get_mpattribute)("BM_UNKNOWN_FILE") then
      return mp.CLEAN
    end
    if (mp.get_mpattributevalue)("Lua:HdrDdVal") ~= (mp.readu_u32)(headerpage, 1) then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

