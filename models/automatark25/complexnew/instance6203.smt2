(declare-const X String)
; ^((\d{2,4})/)?((\d{6,8})|(\d{2})-(\d{2})-(\d{2,4})|(\d{3,4})-(\d{3,4}))$
(assert (not (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re "/"))) (re.union ((_ re.loop 6 8) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 4) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /\/loader\.cpl$/U
(assert (str.in.re X (str.to.re "//loader.cpl/U\x0a")))
; ^(([A-Z]{1}[a-z]+([\-][A-Z]{1}[a-z]+)?)([ ]([A-Z]\.)){0,2}[ ](([A-Z]{1}[a-z]*)|([O]{1}[\']{1}[A-Z][a-z]{2,}))([ ](Jr\.|Sr\.|IV|III|II))?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 0 2) (re.++ (str.to.re " ") (re.range "A" "Z") (str.to.re "."))) (str.to.re " ") (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (str.to.re "O")) ((_ re.loop 1 1) (str.to.re "'")) (re.range "A" "Z") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))) (re.opt (re.++ (str.to.re " ") (re.union (str.to.re "Jr.") (str.to.re "Sr.") (str.to.re "IV") (str.to.re "III") (str.to.re "II")))) ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")))))))
(check-sat)
