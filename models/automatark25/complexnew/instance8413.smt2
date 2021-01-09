(declare-const X String)
; ^([30|36|38]{2})([0-9]{12})$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "0") (str.to.re "|") (str.to.re "6") (str.to.re "8"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))
; Logtraffbest\x2EbizAdToolsLogged
(assert (not (str.in.re X (str.to.re "Logtraffbest.bizAdToolsLogged\x0a"))))
(check-sat)
