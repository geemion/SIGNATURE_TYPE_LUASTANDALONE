-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_P7X_ObMpAttributes_ 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetCertificateInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if #l_0_0 < 1 then
  return mp.CLEAN
end
local l_0_1 = 0
local l_0_2 = 0
local l_0_3 = 0
local l_0_4 = 3
local l_0_5 = 3
local l_0_6 = 3
local l_0_7 = function(l_1_0)
  -- function num : 0_0
  if not l_1_0 then
    return 
  end
  l_1_0 = l_1_0:gsub(" ", "")
  if #l_1_0 > 50 then
    return 
  end
  if (mp.get_mpattribute)(l_1_0) then
    return 
  end
  ;
  (mp.set_mpattribute)(l_1_0)
  return 
end

local l_0_8 = function(l_2_0, l_2_1)
  -- function num : 0_1
  local l_2_2 = 6
  if l_2_1 and type(l_2_1) == "number" then
    l_2_2 = l_2_1
  end
  if not l_2_0 then
    return nil
  end
  if #l_2_0 < l_2_2 then
    l_2_2 = #l_2_0
  end
  local l_2_3, l_2_4 = (l_2_0:gsub(" ", "")):sub, l_2_0:gsub(" ", "")
  local l_2_5 = 1
  do
    local l_2_6 = l_2_2
    do return l_2_3(l_2_4, l_2_5, l_2_6) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  end
end

local l_0_9 = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = string.format
  local l_3_2 = "%x"
  do
    local l_3_3, l_3_4, l_3_5, l_3_6, l_3_7 = (crypto.CRC32Buffer)(-1, l_3_0, 0, #l_3_0), .end
    do return l_3_1(l_3_2, l_3_3, l_3_4, l_3_5, l_3_6, l_3_7) end
    -- DECOMPILER ERROR at PC12: Confused about usage of register R2 for local variables in 'ReleaseLocals'

  end
end

for l_0_15,l_0_16 in ipairs(l_0_0) do
  local l_0_12, l_0_13 = function(l_4_0)
  -- function num : 0_3 , upvalues : l_0_9
  if not l_4_0 then
    return nil
  end
  if not l_4_0.Hash then
    return nil
  end
  local l_4_1 = l_4_0.Hash
  local l_4_2 = l_0_9
  local l_4_3 = l_4_1
  do return l_4_2(l_4_3) end
  -- DECOMPILER ERROR at PC14: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end
, function(l_5_0)
  -- function num : 0_4 , upvalues : l_0_9
  if not l_5_0 then
    return nil
  end
  local l_5_1, l_5_2, l_5_3, l_5_4, l_5_5, l_5_6, l_5_7, l_5_8, l_5_9, l_5_10 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
  if l_5_0.Country then
    l_5_1 = (mp.utf16to8)(l_5_0.Country)
    l_5_2 = l_0_9(l_5_1)
  end
  if l_5_0.State then
    l_5_3 = (mp.utf16to8)(l_5_0.State)
    l_5_4 = l_0_9(l_5_3)
  end
  if l_5_0.Locality then
    l_5_5 = (mp.utf16to8)(l_5_0.Locality)
    l_5_6 = l_0_9(l_5_5)
  end
  if l_5_0.Organization then
    l_5_7 = (mp.utf16to8)(l_5_0.Organization)
    l_5_8 = l_0_9(l_5_7)
  end
  if l_5_0.CommonName then
    l_5_9 = (mp.utf16to8)(l_5_0.CommonName)
    l_5_10 = l_0_9(l_5_9)
  end
  local l_5_11 = {}
  l_5_11.Country = l_5_1
  l_5_11.CountryCRC32 = l_5_2
  l_5_11.State = l_5_3
  l_5_11.StateCRC32 = l_5_4
  l_5_11.Locality = l_5_5
  l_5_11.LocalityCRC32 = l_5_6
  l_5_11.Organization = l_5_7
  l_5_11.OrganizationCRC32 = l_5_8
  l_5_11.CommonName = l_5_9
  l_5_11.CommonNameCRC32 = l_5_10
  return l_5_11
end

  -- DECOMPILER ERROR at PC31: Confused about usage of register: R16 in 'UnsetPending'

  if R16_PC31.AuthenticodeContentType == "APPX" then
    if l_0_1 == l_0_4 then
      break
    end
    for l_0_20,l_0_21 in ipairs(R16_PC31.Certificates) do
      -- DECOMPILER ERROR at PC44: Confused about usage of register: R21 in 'UnsetPending'

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R22 in 'AssignReg'

      -- DECOMPILER ERROR at PC52: Overwrote pending register: R22 in 'AssignReg'

      if l_0_2 < l_0_5 then
        if not R21_PC44.FingerprintSha1 or R21_PC44.FingerprintSha256 then
          do return mp.CLEAN end
          if not l_0_12(nil) then
            return mp.CLEAN
          end
          local l_0_24 = nil
          -- DECOMPILER ERROR at PC69: Overwrote pending register: R24 in 'AssignReg'

          -- DECOMPILER ERROR at PC74: Overwrote pending register: R24 in 'AssignReg'

          if not l_0_23.Issuer or l_0_23.Subject then
            do return mp.CLEAN end
            local l_0_25 = nil
            if not l_0_13(nil) then
              return mp.CLEAN
            end
            local l_0_26 = nil
            local l_0_27 = nil
            l_0_7("Lua:P7X:Cert:" .. "FGPT:" .. l_0_8(l_0_25, 8))
            -- DECOMPILER ERROR at PC101: Confused about usage of register: R26 in 'UnsetPending'

            if l_0_27.Country then
              local l_0_28 = nil
              local l_0_29 = nil
              l_0_7("Lua:P7X:Cert:" .. "CTRY:" .. l_0_8(l_0_27.Country, 2))
              l_0_7(l_0_28 .. "CTRY:" .. l_0_8(l_0_27.CountryCRC32, 8))
            end
            do
              -- DECOMPILER ERROR at PC124: Confused about usage of register: R26 in 'UnsetPending'

              if l_0_27.Organization then
                local l_0_30 = nil
                local l_0_31 = nil
                l_0_7(l_0_28 .. "ORG:" .. l_0_8(l_0_27.Organization, 8))
                l_0_7(l_0_30 .. "ORG:" .. l_0_8(l_0_27.OrganizationCRC32, 8))
              end
              do
                -- DECOMPILER ERROR at PC147: Confused about usage of register: R26 in 'UnsetPending'

                if l_0_27.CommonName then
                  local l_0_32 = nil
                  local l_0_33 = nil
                  l_0_7(l_0_30 .. "CN:" .. l_0_8(l_0_27.CommonName, 8))
                  l_0_7(l_0_32 .. "CN:" .. l_0_8(l_0_27.CommonNameCRC32, 8))
                end
                do
                  do
                    l_0_2 = l_0_2 + 1
                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC168: LeaveBlock: unexpected jumping out IF_STMT

                  end
                end
              end
            end
          end
        end
      end
    end
    -- DECOMPILER ERROR at PC171: Confused about usage of register: R16 in 'UnsetPending'

    for l_0_37,l_0_38 in ipairs(l_0_18.Signers) do
      local l_0_34, l_0_35 = nil
      -- DECOMPILER ERROR at PC176: Confused about usage of register: R21 in 'UnsetPending'

      if l_0_3 < l_0_6 then
        if not l_0_23.Fingerprint then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC183: Confused about usage of register: R21 in 'UnsetPending'

        if not l_0_12(l_0_23.Fingerprint) then
          return mp.CLEAN
        end
        local l_0_41 = nil
        l_0_7("Lua:P7X:Sign:" .. "FGPT:" .. l_0_8(l_0_12(l_0_23.Fingerprint), 8))
      end
      do
        do
          l_0_3 = l_0_3 + 1
          -- DECOMPILER ERROR at PC202: LeaveBlock: unexpected jumping out DO_STMT

        end
      end
    end
    l_0_1 = l_0_1 + 1
  end
end
do
  do
    l_0_7((string.format)("Lua:P7X:SignedDataCount:%d", #l_0_0))
    l_0_7((string.format)("Lua:P7X:CertCount:%d", l_0_2))
    l_0_7((string.format)("Lua:P7X:SignerCount:%d", l_0_3))
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC231: freeLocal<0 in 'ReleaseLocals'

  end
end

