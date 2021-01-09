(declare-const X String)
; \D
(assert (str.in.re X (re.++ (re.comp (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
