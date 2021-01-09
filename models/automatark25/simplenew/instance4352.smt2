(declare-const X String)
; GmbH\s+Host\x3AHost\x3AMonitoringGoogle
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:MonitoringGoogle\x0a"))))
(check-sat)
