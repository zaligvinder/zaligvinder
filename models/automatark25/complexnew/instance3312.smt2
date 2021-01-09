(declare-const X String)
; ^(\+[0-9]{2,}[0-9]{4,}[0-9]*)(x?[0-9]{1,})?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "x")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a+") (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:\x0a")))))
(check-sat)
