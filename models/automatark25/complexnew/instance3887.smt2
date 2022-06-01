(declare-const X String)
; /\u{3d}\u{a}$/P
(assert (str.in_re X (str.to_re "/=\u{a}/P\u{a}")))
; ^[0-9]{2}
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
