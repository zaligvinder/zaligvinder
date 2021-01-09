(declare-const X String)
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (not (str.in.re X (str.to.re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\x0a"))))
(check-sat)
