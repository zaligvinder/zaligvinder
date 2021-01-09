(declare-const X String)
; /^\x01\x02.{0,50}[a-zA-Z]{10}\x2fPK.{0,50}[a-zA-Z]{10}\x2f[a-zA-Z]{7}\.classPK/sR
(assert (str.in.re X (re.++ (str.to.re "/\x01\x02") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/PK") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/") ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".classPK/sR\x0a"))))
(check-sat)
