(declare-const X String)
; /\x2eswf([\x3f\x2f]|$)/Uim
(assert (str.in.re X (re.++ (str.to.re "/.swf") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a"))))
; iebar\s+Referer\x3aThis
(assert (not (str.in.re X (re.++ (str.to.re "iebar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Referer:This\x0a")))))
(check-sat)
