(declare-const X String)
; ^[-+]?\d+(\.\d{2})?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2excf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xcf/i\x0a"))))
(check-sat)
