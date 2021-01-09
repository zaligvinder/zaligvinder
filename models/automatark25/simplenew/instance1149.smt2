(declare-const X String)
; [0-1]+
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "1")) (str.to.re "\x0a")))))
(check-sat)
