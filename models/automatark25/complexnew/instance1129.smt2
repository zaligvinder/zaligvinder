(declare-const X String)
; /filename=[^\n]*\x2eets/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ets/i\x0a"))))
; [A-Za-z]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; /\x2epjpeg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pjpeg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
