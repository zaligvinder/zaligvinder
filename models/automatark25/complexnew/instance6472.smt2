(declare-const X String)
; /filename=[^\n]*\x2evwr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vwr/i\x0a")))))
; /\x2evisprj([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.visprj") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
