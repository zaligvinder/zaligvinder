(declare-const X String)
; /\xFF\xFE\x3F\x10\x00\x00.{14}[\x2Bx\x2Fa-z0-9]{20}/smi
(assert (str.in.re X (re.++ (str.to.re "/\xff\xfe?\x10\x00\x00") ((_ re.loop 14 14) re.allchar) ((_ re.loop 20 20) (re.union (str.to.re "+") (str.to.re "x") (str.to.re "/") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/smi\x0a"))))
(check-sat)
