(declare-const X String)
; /u=[\dA-Fa-f]{8}/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/u=") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re "/smiU\x0a")))))
(check-sat)
