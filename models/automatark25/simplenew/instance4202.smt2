(declare-const X String)
; ^\d*(\.\d*)$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a.") (re.* (re.range "0" "9")))))
(check-sat)
