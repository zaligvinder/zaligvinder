(declare-const X String)
; e2give\.com.*Host\x3A.*Host\x3a
(assert (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:\x0a"))))
(check-sat)
