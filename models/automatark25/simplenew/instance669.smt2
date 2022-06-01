(declare-const X String)
; /^POST\u{20}\u{2f}g[ao]lfstream\u{26}/
(assert (not (str.in_re X (re.++ (str.to_re "/POST /g") (re.union (str.to_re "a") (str.to_re "o")) (str.to_re "lfstream&/\u{a}")))))
(check-sat)
