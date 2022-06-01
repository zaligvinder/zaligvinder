(declare-const X String)
; www\.trackhits\.ccUser-Agent\u{3A}iz=LOGSupremeResult
(assert (str.in_re X (str.to_re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\u{a}")))
(check-sat)
