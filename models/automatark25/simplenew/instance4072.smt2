(declare-const X String)
; BV_SessionID=@@@@0106700396.1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg.0
(assert (str.in_re X (re.++ (str.to_re "BV_SessionID=@@@@0106700396") re.allchar (str.to_re "1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg") re.allchar (str.to_re "0\u{a}"))))
(check-sat)
