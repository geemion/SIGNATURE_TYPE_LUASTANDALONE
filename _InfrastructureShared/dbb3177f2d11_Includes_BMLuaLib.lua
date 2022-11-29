-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/dbb3177f2d11_Includes_BMLuaLib 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
do
  if not l_0_0 or (string.find)((string.lower)(l_0_0), "\\windows\\system32\\services.exe", 1, true) then
    local l_0_1 = (bm.get_current_process_startup_info)()
    if l_0_1 and MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= l_0_1.integrity_level then
      return mp.CLEAN
    end
  end
  local l_0_2 = (this_sigattrlog[3]).utf8p2
  if l_0_2 and l_0_2 ~= "" then
    l_0_2 = (string.lower)(l_0_2)
    if not (string.find)(l_0_2, "\\programdata\\microsoft\\windows defender\\definition updates\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\mpksldrv%.sys") and not (string.find)(l_0_2, "%%common_appdata%%\\microsoft\\windows defender\\definition updates\\{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\mpksldrv%.sys") and not (string.find)(l_0_2, "\\windows\\system32\\mpenginestore\\mpksldrv.sys", 1, true) then
      return mp.INFECTED
    end
  end
  local l_0_3 = (this_sigattrlog[3]).utf8p1
  if not l_0_3 then
    return mp.CLEAN
  end
  l_0_3 = (string.match)(l_0_3, "\\(mpksl[%w]+)")
  if not l_0_3 then
    return mp.CLEAN
  end
  if not getService(l_0_3) then
    return mp.CLEAN
  end
  return mp.INFECTED
end

