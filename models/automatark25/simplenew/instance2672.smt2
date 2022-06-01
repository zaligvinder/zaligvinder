(declare-const X String)
; User-Agent\u{3A}Host\u{3A}hasHost\u{3A}ComputerKeylogger\u{2E}com
(assert (str.in_re X (str.to_re "User-Agent:Host:hasHost:ComputerKeylogger.com\u{a}")))
(check-sat)
