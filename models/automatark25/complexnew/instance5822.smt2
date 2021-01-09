(declare-const X String)
; ^(\w+([_.]{1}\w+)*@\w+([_.]{1}\w+)*\.[A-Za-z]{2,3}[;]?)*$
(assert (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ ((_ re.loop 1 1) (re.union (str.to.re "_") (str.to.re "."))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ ((_ re.loop 1 1) (re.union (str.to.re "_") (str.to.re "."))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re ".") ((_ re.loop 2 3) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re ";")))) (str.to.re "\x0a"))))
; (^.+\|+[A-Za-z])
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (str.to.re "|")) (re.union (re.range "A" "Z") (re.range "a" "z"))))))
; ^((\.)?([a-zA-Z0-9_-]?)(\.)?([a-zA-Z0-9_-]?)(\.)?)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (re.opt (str.to.re ".")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2edcr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a"))))
(check-sat)
