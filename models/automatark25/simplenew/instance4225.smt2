(declare-const X String)
; /\x28compatible\x3b[A-Z]*\x3b\x29\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/(compatible;") (re.* (re.range "A" "Z")) (str.to.re ";)\x0d\x0a/H\x0a")))))
(check-sat)
