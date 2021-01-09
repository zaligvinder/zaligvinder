(declare-const X String)
; www\x2Emaxifiles\x2Ecom.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.maxifiles.com") (re.* re.allchar) (str.to.re "Host:\x0a")))))
(check-sat)
