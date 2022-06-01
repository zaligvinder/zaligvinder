(declare-const X String)
; Host\u{3A}Host\u{3a}sidebar\.activeshopper\.com
(assert (str.in_re X (str.to_re "Host:Host:sidebar.activeshopper.com\u{a}")))
(check-sat)
