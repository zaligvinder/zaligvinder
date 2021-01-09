(declare-const X String)
; ^/{1}(((/{1}\.{1})?[a-zA-Z0-9 ]+/?)+(\.{1}[a-zA-Z0-9]{2,4})?)$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "/")) (str.to.re "\x0a") (re.+ (re.++ (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "/")) ((_ re.loop 1 1) (str.to.re ".")))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "/")))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))
(check-sat)
