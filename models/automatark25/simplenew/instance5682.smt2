(declare-const X String)
; ~[A-Z][a-z]+(b|ch|d|g|j|k|l|m|n|p|r|s|t|v|z)(ian)$
(assert (not (str.in_re X (re.++ (str.to_re "~") (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.union (str.to_re "b") (str.to_re "ch") (str.to_re "d") (str.to_re "g") (str.to_re "j") (str.to_re "k") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "v") (str.to_re "z")) (str.to_re "ian\u{a}")))))
(check-sat)
