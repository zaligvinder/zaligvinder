(declare-const X String)
; ^[0-9]{6}$
(assert (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^\x2f[0-9a-f]+$/iU
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/iU\x0a"))))
(check-sat)
