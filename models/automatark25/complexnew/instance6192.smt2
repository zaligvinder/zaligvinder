(declare-const X String)
; GmbH\s+Host\x3AHost\x3AMonitoringGoogle
(assert (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:MonitoringGoogle\x0a"))))
; www\x2Eonlinecasinoextra\x2Ecomsearchreslt\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\x0a"))))
; ^([A-Za-z]|[A-Za-z][0-9]*|[0-9]*[A-Za-z])+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
(check-sat)
