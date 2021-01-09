(declare-const X String)
; (\{\\f\d*)\\([^;]+;)
(assert (not (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";")))))
(check-sat)
