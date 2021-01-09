(declare-const X String)
; ^([-]?[0-9])$|^([-]?[1][0-2])$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (str.to.re "1") (re.range "0" "2")))))
; &[a-zA-Z]+\d{0,3};
(assert (str.in.re X (re.++ (str.to.re "&") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re ";\x0a"))))
; ^(000-)(\\d{5}-){2}\\d{3}$
(assert (str.in.re X (re.++ (str.to.re "000-") ((_ re.loop 2 2) (re.++ (str.to.re "\x5c") ((_ re.loop 5 5) (str.to.re "d")) (str.to.re "-"))) (str.to.re "\x5c") ((_ re.loop 3 3) (str.to.re "d")) (str.to.re "\x0a"))))
(check-sat)
