(declare-const X String)
; Windows\d+BlackFiltereddaosearch\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Windows") (re.+ (re.range "0" "9")) (str.to_re "BlackFiltereddaosearch.com\u{a}")))))
; GmbH\s+Host\u{3A}Host\u{3A}MonitoringGoogle
(assert (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:MonitoringGoogle\u{a}"))))
(check-sat)
