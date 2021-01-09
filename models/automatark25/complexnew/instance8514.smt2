(declare-const X String)
; &[a-zA-Z]+\d{0,3};
(assert (str.in.re X (re.++ (str.to.re "&") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re ";\x0a"))))
; [0-9]*\.?[0-9]*[1-9]
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.range "1" "9") (str.to.re "\x0a"))))
(check-sat)
