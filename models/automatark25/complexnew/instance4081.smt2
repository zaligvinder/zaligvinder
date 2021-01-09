(declare-const X String)
; ^01[0-2]{1}[0-9]{8}
(assert (str.in.re X (re.++ (str.to.re "01") ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; (([a-zA-Z0-9\-]*\.{1,}){1,}[a-zA-Z0-9]*)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.+ (str.to.re ".")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))
; ^(([1-9]{1}[0-9]{0,5}([.]{1}[0-9]{0,2})?)|(([0]{1}))([.]{1}[0-9]{0,2})?)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (str.to.re "0")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9")))))) (str.to.re "\x0a"))))
(check-sat)
