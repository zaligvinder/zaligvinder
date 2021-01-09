(declare-const X String)
; ^(\d{5}-\d{4}|\d{5})$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\/modules\/\d\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//modules/") (re.range "0" "9") (str.to.re ".jar/U\x0a")))))
; /\/stat_n\/$/U
(assert (str.in.re X (str.to.re "//stat_n//U\x0a")))
(check-sat)
