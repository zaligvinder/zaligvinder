(declare-const X String)
; /\x2esmil([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.smil") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2em4r([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.m4r") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\.js\/\?[a-z]+\=[a-z]{1,4}/R
(assert (not (str.in.re X (re.++ (str.to.re "/.js/?") (re.+ (re.range "a" "z")) (str.to.re "=") ((_ re.loop 1 4) (re.range "a" "z")) (str.to.re "/R\x0a")))))
(check-sat)
