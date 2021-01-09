(declare-const X String)
; /\x2emcl([\x3f\x2f]|$)/Uim
(assert (str.in.re X (re.++ (str.to.re "/.mcl") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a"))))
(check-sat)
