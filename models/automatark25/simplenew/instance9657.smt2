(declare-const X String)
; log\=\u{7B}IP\u{3A}\s+Pcast\d+Host\u{3a}ohgdhkzfhdzo\u{2f}uwpOK\r\nHost\u{3A}HWAEname\u{2e}cnnic\u{2e}cnRXnewads1\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "log={IP:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Pcast") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cnRXnewads1.com\u{a}"))))
(check-sat)
