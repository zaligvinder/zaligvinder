(declare-const X String)
; Windows\d+BlackFiltereddaosearch\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Windows") (re.+ (re.range "0" "9")) (str.to.re "BlackFiltereddaosearch.com\x0a")))))
; GmbH\s+Host\x3AHost\x3AMonitoringGoogle
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:MonitoringGoogle\x0a"))))
(check-sat)
