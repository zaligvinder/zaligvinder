(declare-const X String)
; /\x2edvr-ms([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dvr-ms") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2eani/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ani/i\x0a")))))
(check-sat)
