(declare-const X String)
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a")))
; ^\d{5}-\d{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
