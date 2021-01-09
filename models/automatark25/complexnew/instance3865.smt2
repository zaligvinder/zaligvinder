(declare-const X String)
; /^h=\d+&w=\d+&ua=/Psi
(assert (not (str.in.re X (re.++ (str.to.re "/h=") (re.+ (re.range "0" "9")) (str.to.re "&w=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Psi\x0a")))))
; /\x3d\x3d$/P
(assert (str.in.re X (str.to.re "/==/P\x0a")))
(check-sat)
