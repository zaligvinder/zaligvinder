(declare-const X String)
; ^DOMAIN\\\w+$
(assert (not (str.in.re X (re.++ (str.to.re "DOMAIN\x5c") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
