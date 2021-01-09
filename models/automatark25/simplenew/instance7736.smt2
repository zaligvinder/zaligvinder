(declare-const X String)
; /\(\?[gimxs]{1,5}\)/
(assert (str.in.re X (re.++ (str.to.re "/(?") ((_ re.loop 1 5) (re.union (str.to.re "g") (str.to.re "i") (str.to.re "m") (str.to.re "x") (str.to.re "s"))) (str.to.re ")/\x0a"))))
(check-sat)
