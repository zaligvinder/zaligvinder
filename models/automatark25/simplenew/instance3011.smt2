(declare-const X String)
; /\x2epcx([\x3f\x2f]|$)/Uim
(assert (str.in.re X (re.++ (str.to.re "/.pcx") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a"))))
(check-sat)
