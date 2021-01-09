(declare-const X String)
; /\/[a-z]+\?[a-z]+\=[a-z]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "a" "z")) (str.to.re "?") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.range "a" "z")) (str.to.re "/U\x0a")))))
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (str.in.re X (str.to.re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\x0a")))
(check-sat)
