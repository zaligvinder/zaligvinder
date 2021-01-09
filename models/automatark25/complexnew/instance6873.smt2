(declare-const X String)
; BV_SessionID=@@@@0106700396.1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg.0
(assert (str.in.re X (re.++ (str.to.re "BV_SessionID=@@@@0106700396") re.allchar (str.to.re "1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg") re.allchar (str.to.re "0\x0a"))))
; Log[^\n\r]*Host\x3A\dHOST\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Log") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.range "0" "9") (str.to.re "HOST:User-Agent:\x0a")))))
(check-sat)
