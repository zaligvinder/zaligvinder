(declare-const X String)
; /\/[a-f0-9]{32}\/\d{10}\/[a-f0-9]{32}\/\d{10}\.tpl$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re ".tpl/U\x0a")))))
(check-sat)
