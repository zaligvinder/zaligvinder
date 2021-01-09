(declare-const X String)
; Logtraffbest\x2EbizAdToolsLogged
(assert (str.in.re X (str.to.re "Logtraffbest.bizAdToolsLogged\x0a")))
(check-sat)
