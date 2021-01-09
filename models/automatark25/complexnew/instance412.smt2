(declare-const X String)
; /\x2eswf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.swf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ConectadoHost\x3aas\.cometsystems\.com
(assert (str.in.re X (str.to.re "ConectadoHost:as.cometsystems.com\x0a")))
(check-sat)
