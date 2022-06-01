(declare-const X String)
; NETObserve\d+Host\u{3a}ohgdhkzfhdzo\u{2f}uwpOK\r\nHost\u{3A}HWAEname\u{2e}cnnic\u{2e}cn
(assert (not (str.in_re X (re.++ (str.to_re "NETObserve") (re.+ (re.range "0" "9")) (str.to_re "Host:ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:HWAEname.cnnic.cn\u{a}")))))
(check-sat)
