(declare-const X String)
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (not (str.in.re X (re.++ (str.to.re "/POST /g") (re.union (str.to.re "a") (str.to.re "o")) (str.to.re "lfstream&/\x0a")))))
(check-sat)
