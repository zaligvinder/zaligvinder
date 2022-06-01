(declare-const X String)
; /\u{28}compatible\u{3b}[A-Z]*\u{3b}\u{29}\u{d}\u{a}/H
(assert (not (str.in_re X (re.++ (str.to_re "/(compatible;") (re.* (re.range "A" "Z")) (str.to_re ";)\u{d}\u{a}/H\u{a}")))))
(check-sat)
