(declare-const X String)
; Send=\s+User-Agent\u{3A}\d+Host\u{3A}\u{2F}products\u{2F}spyblocs\u{2F}backtrust\u{2E}comv\u{2E}LoginHost\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Send=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Host:/products/spyblocs/\u{13}backtrust.comv.LoginHost:\u{a}")))))
; corep\u{2E}dmcast\u{2E}com[^\n\r]*Referer\u{3a}.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\u{2E}myarmory\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}")))))
; \u{3C}logs\u{40}dummyserver\u{2E}com\u{3E}
(assert (str.in_re X (str.to_re "<logs@dummyserver.com>\u{a}")))
(check-sat)
