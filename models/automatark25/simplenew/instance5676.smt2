(declare-const X String)
; www\u{2E}cameup\u{2E}comNetTracker
(assert (str.in_re X (str.to_re "www.cameup.com\u{13}NetTracker\u{a}")))
(check-sat)
