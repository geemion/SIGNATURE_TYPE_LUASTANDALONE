-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/AVAS_PostSigUpdate_Scan_Machine_Includes_Neobar,Soctus 

-- params : ...
-- function num : 0
Infrastructure_NeobarReportPathExclusions("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_NeobarReportPathExclusions("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_SoctuseerReportPathExclusions("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_SoctuseerReportPathExclusions("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_ScanWDFirewallBlockRules()
Infrastructure_AntiTamperingCheckAndRepair()
Infrastructure_ScanEFISystemPartitions()
Infrastructure_FirstTimeAT()
Infrastructure_ScanLeviathon()
Infrastructure_ScanCFABootProtState()
Infrastructure_ScanMpEtwPublisher()
Infrastructure_DLAMTelemetry()

