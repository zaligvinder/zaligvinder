(declare-const X String)
; GmbH\s+Host\x3AHost\x3AMonitoringGoogle
(assert (not (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:MonitoringGoogle\x0a")))))
; /g\/\d{9}\/[0-9a-f]{32}\/[0-9]$/U
(assert (str.in.re X (re.++ (str.to.re "/g/") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/") (re.range "0" "9") (str.to.re "/U\x0a"))))
(check-sat)
