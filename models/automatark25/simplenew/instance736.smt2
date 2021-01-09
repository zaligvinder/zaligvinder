(declare-const X String)
; /^\x2f[0-9a-f]+$/iU
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/iU\x0a"))))
(check-sat)
