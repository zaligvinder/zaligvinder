(declare-const X String)
; /\x2eswf([\x3f\x2f]|$)/Uim
(assert (str.in.re X (re.++ (str.to.re "/.swf") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a"))))
(check-sat)
