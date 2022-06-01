(declare-const X String)
; ProjectMyWebSearchSearchAssistantfast-look\u{2E}comOneReporter
(assert (str.in_re X (str.to_re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\u{a}")))
; download\u{2E}eblocs\u{2E}comHost\u{3A}Referer\u{3A}
(assert (not (str.in_re X (str.to_re "download.eblocs.comHost:Referer:\u{a}"))))
; BV_SessionID=@@@@0106700396.1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg.0
(assert (not (str.in_re X (re.++ (str.to_re "BV_SessionID=@@@@0106700396") re.allchar (str.to_re "1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg") re.allchar (str.to_re "0\u{a}")))))
(check-sat)
