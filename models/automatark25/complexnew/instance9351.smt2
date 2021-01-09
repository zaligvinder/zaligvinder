(declare-const X String)
; target[ ]*[=]([ ]*)(["]|['])*([_])*([A-Za-z0-9])+(["])*
(assert (not (str.in.re X (re.++ (str.to.re "target") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* (str.to.re "_")) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (str.to.re "\x22")) (str.to.re "\x0a")))))
; ^(([1-9]{1}[0-9]{0,5}([.]{1}[0-9]{0,2})?)|(([0]{1}))([.]{1}[0-9]{0,2})?)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to.re "0")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9")))))) (str.to.re "\x0a"))))
; ^\d{5}$|^\d{5}-\d{4}$
(assert (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
