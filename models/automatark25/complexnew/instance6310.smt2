(declare-const X String)
; ^\$?\d{1,3}(,?\d{3})*(\.\d{1,2})?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^((.){1,}(\d){1,}(.){0,})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (re.range "0" "9")) (re.* re.allchar)))))
; attachedEverywareHELOBasic
(assert (str.in.re X (str.to.re "attachedEverywareHELOBasic\x0a")))
; ^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.range "A" "Z") (re.range "0" "9") (re.range "A" "Z") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "0" "9") (str.to.re "\x0a"))))))
(check-sat)
