(declare-const X String)
; /filename=[^\n]*\x2ewm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wm/i\x0a"))))
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.cis") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
