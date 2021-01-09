(declare-const X String)
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (str.in.re X (str.to.re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\x0a")))
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (not (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a"))))
; BV_SessionID=@@@@0106700396.1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg.0
(assert (not (str.in.re X (re.++ (str.to.re "BV_SessionID=@@@@0106700396") re.allchar (str.to.re "1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg") re.allchar (str.to.re "0\x0a")))))
(check-sat)
