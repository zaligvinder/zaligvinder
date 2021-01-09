(declare-const X String)
; [\t ]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "\x09") (str.to.re " "))) (str.to.re "\x0a")))))
(check-sat)
