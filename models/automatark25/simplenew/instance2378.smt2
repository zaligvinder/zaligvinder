(declare-const X String)
; 32e3432ew+
(assert (not (str.in.re X (re.++ (str.to.re "32e3432e") (re.+ (str.to.re "w")) (str.to.re "\x0a")))))
(check-sat)
