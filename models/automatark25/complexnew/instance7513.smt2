(declare-const X String)
; ^([\w\._-]){3,}\@([\w\-_.]){3,}\.(\w){2,4}$
(assert (str.in.re X (re.++ (str.to.re "@.") ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a") ((_ re.loop 3 3) (re.union (str.to.re ".") (str.to.re "_") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re ".") (str.to.re "_") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 3 3) (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; ^[A-Z]\d{2}(\.\d){0,1}$
(assert (str.in.re X (re.++ (re.range "A" "Z") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
; iepluginBrowsedOVNHost\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (not (str.in.re X (str.to.re "iepluginBrowsedOVNHost:/products/spyblocs/\x13\x0a"))))
(check-sat)
