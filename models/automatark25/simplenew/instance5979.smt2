(declare-const X String)
; ^[ \t]+|[ \t]+$
(assert (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a")))))
(check-sat)
