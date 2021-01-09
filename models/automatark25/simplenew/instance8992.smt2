(declare-const X String)
; ^[^\"]+$
(assert (not (str.in.re X (re.++ (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
