(declare-const X String)
; ~[A-Z][a-z]+(b|ch|d|g|j|k|l|m|n|p|r|s|t|v|z)(ian)$
(assert (not (str.in.re X (re.++ (str.to.re "~") (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.union (str.to.re "b") (str.to.re "ch") (str.to.re "d") (str.to.re "g") (str.to.re "j") (str.to.re "k") (str.to.re "l") (str.to.re "m") (str.to.re "n") (str.to.re "p") (str.to.re "r") (str.to.re "s") (str.to.re "t") (str.to.re "v") (str.to.re "z")) (str.to.re "ian\x0a")))))
(check-sat)
