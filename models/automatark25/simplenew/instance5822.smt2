(declare-const X String)
; ^[\w]+[-\.\w]*@[-\w]+\.[a-z]{2,6}(\.[a-z]{2,6})?$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 6) (re.range "a" "z")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 6) (re.range "a" "z")))) (str.to.re "\x0a")))))
(check-sat)
