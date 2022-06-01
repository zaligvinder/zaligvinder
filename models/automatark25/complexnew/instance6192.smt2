(declare-const X String)
; GmbH\s+Host\u{3A}Host\u{3A}MonitoringGoogle
(assert (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:MonitoringGoogle\u{a}"))))
; www\u{2E}onlinecasinoextra\u{2E}comsearchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (str.to_re "www.onlinecasinoextra.comsearchreslt}{Sysuptime:\u{a}"))))
; ^([A-Za-z]|[A-Za-z][0-9]*|[0-9]*[A-Za-z])+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
(check-sat)
