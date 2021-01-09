(declare-const X String)
; ProAgent\d+X-Mailer\x3Abacktrust\x2EcomReferer\x3aSupreme
(assert (str.in.re X (re.++ (str.to.re "ProAgent") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.comReferer:Supreme\x0a"))))
(check-sat)
