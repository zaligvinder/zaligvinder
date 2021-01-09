(declare-const X String)
; /filename=[^\n]*\x2ejmh/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jmh/i\x0a"))))
; ProPOWRSTRPquick\x2Eqsrch\x2EcomReferer\x3A
(assert (not (str.in.re X (str.to.re "ProPOWRSTRPquick.qsrch.comReferer:\x0a"))))
; ^[+-]?[0-9]*\.?([0-9]?)*
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.opt (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
