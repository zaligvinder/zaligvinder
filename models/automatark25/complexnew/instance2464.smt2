(declare-const X String)
; ^[0-9]{4}\s{0,2}[a-zA-z]{2}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 0 2) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "z"))) (str.to.re "\x0a"))))
; ^(0|\+33)[1-9]([-. ]?[0-9]{2}){4}$
(assert (str.in.re X (re.++ (re.union (str.to.re "0") (str.to.re "+33")) (re.range "1" "9") ((_ re.loop 4 4) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
