(declare-const X String)
; xbqyosoe\x2fcpvmviewComponentisrelated\x2Eyok\x2Ecom
(assert (str.in.re X (str.to.re "xbqyosoe/cpvmviewComponentisrelated.yok.com\x0a")))
; ^[A-Z0-9<]{9}[0-9]{1}[A-Z]{3}[0-9]{7}[A-Z]{1}[0-9]{7}[A-Z0-9<]{14}[0-9]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 9 9) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "<"))) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 14 14) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "<"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
