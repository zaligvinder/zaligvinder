(declare-const X String)
; ^[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3})$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; /\/java(rh|db)\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//java") (re.union (str.to.re "rh") (str.to.re "db")) (str.to.re ".php/U\x0a"))))
(check-sat)
