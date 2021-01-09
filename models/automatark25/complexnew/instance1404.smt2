(declare-const X String)
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9])?$
(assert (str.in.re X (re.++ (str.to.re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; ^\[0-9]{4}\-\[0-9]{2}\-\[0-9]{2}$
(assert (not (str.in.re X (re.++ (str.to.re "[0-9") ((_ re.loop 4 4) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "-[0-9") ((_ re.loop 2 2) (str.to.re "]")) (str.to.re "\x0a")))))
(check-sat)
