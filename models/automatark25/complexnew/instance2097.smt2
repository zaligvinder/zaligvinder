(declare-const X String)
; ^\d*\.?\d*$
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; (SE-?)?[0-9]{12}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "SE") (re.opt (str.to.re "-")))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\/3\/[A-Z]{2}\/[a-f0-9]{32}\/\d+\.\d+\.\d+\.\d+\//
(assert (not (str.in.re X (re.++ (str.to.re "//3/") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "/") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "//\x0a")))))
(check-sat)
