(declare-const X String)
; ^((\d)?(\d{1})(\.{1})(\d)?(\d{1})){1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) (re.opt (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
