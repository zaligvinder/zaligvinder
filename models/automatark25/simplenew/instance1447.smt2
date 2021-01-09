(declare-const X String)
; ^(\d{4},?)+$
(assert (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a"))))
(check-sat)
