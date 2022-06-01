(declare-const X String)
; /^h=\d+&w=\d+&ua=/Psi
(assert (not (str.in_re X (re.++ (str.to_re "/h=") (re.+ (re.range "0" "9")) (str.to_re "&w=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Psi\u{a}")))))
; /\u{3d}\u{3d}$/P
(assert (str.in_re X (str.to_re "/==/P\u{a}")))
(check-sat)
