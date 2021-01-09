(declare-const X String)
; /filename=[^\n]*\x2emov/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mov/i\x0a")))))
; ^\d+\/?\d*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
