-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_VobfusRemovableDriveFileName 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
if (mp.getfilesize)() > 307200 or (mp.getfilesize)() < 51200 then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_UNKNOWN or (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) ~= 264193 then
  return mp.CLEAN
end
if ((mp.getfilename)()):sub(-4) == ".exe" then
  if (mp.get_mpattribute)("NID:VobfusRemovableDriveFileName") then
    (mp.set_mpattribute)("Lua:VobfusRemovableDriveFileName")
  end
  if (mp.get_mpattribute)("NID:VobfusRemovableDriveFileNameEnUs") then
    (mp.set_mpattribute)("Lua:VobfusRemovableDriveFileNameEnUs")
  end
end
return mp.CLEAN

