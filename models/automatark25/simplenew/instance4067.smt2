(declare-const X String)
; [0-7]+
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "7")) (str.to.re "\x0a")))))
(check-sat)
