(declare-const X String)
; /\/14\d{8}(.jar)?$/U
(assert (str.in.re X (re.++ (str.to.re "//14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ re.allchar (str.to.re "jar"))) (str.to.re "/U\x0a"))))
(check-sat)
