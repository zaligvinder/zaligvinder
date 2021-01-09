(declare-const X String)
; e2give\.com.*Redirector\x22.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Redirector\x22") (re.* re.allchar) (str.to.re "Host:\x0a")))))
(check-sat)
