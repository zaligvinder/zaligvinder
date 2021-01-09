(declare-const X String)
; ^(\d){8}$
(assert (not (str.in.re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; [0-7]+
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "7")) (str.to.re "\x0a")))))
(check-sat)
