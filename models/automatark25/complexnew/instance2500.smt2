(declare-const X String)
; sql.*badurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "sql") (re.* re.allchar) (str.to.re "badurl.grandstreetinteractive.com\x0a")))))
; ^((Sir|Dr.|Mr.|Mrs.|Ms.|Rev.){1}[ ]?)?([A-Z]{1}[.]{1}([A-Z]{1}[.]{1})?|[A-Z]{1}[a-z]{1,}|[A-Z]{1}[a-z]{1,}[-]{1}[A-Z]{1}[a-z]{1,}|[A-Z]{1}[a-z]{0,}[ ]{1}[A-Z]{1}[a-z]{0,}){1}$
(assert (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to.re "Sir") (re.++ (str.to.re "Dr") re.allchar) (re.++ (str.to.re "Mr") re.allchar) (re.++ (str.to.re "Mrs") re.allchar) (re.++ (str.to.re "Ms") re.allchar) (re.++ (str.to.re "Rev") re.allchar))) (re.opt (str.to.re " ")))) ((_ re.loop 1 1) (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re ".")) (re.opt (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (str.to.re "."))))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z"))))) (str.to.re "\x0a"))))
; ^(0|\+33)[1-9]([-. ]?[0-9]{2}){4}$
(assert (str.in.re X (re.++ (re.union (str.to.re "0") (str.to.re "+33")) (re.range "1" "9") ((_ re.loop 4 4) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
