(declare-const X String)
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.opt (str.to.re "i")) (str.to.re "e") (re.opt (str.to.re "a")) (re.opt (str.to.re "u")) (re.opt (re.union (str.to.re "r") (str.to.re "(") (str.to.re "e") (str.to.re ")") (str.to.re "?") (str.to.re "|") (str.to.re "x"))))))
; ^(9|2{1})+([1-9]{1})+([0-9]{7})$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "9") ((_ re.loop 1 1) (str.to.re "2")))) (re.+ ((_ re.loop 1 1) (re.range "1" "9"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; \.\s|$(\n|\r\n)
(assert (not (str.in.re X (re.union (re.++ (str.to.re ".") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.union (str.to.re "\x0a") (str.to.re "\x0d\x0a")) (str.to.re "\x0a"))))))
(check-sat)
