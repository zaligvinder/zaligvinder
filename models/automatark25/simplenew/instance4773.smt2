(declare-const X String)
; ^1+0+$
(assert (not (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a")))))
(check-sat)
