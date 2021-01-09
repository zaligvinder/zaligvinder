(declare-const X String)
; ^([A-Z0-9]{5})$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2esmil/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a")))))
; /\x2epub([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.pub") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^[a-z]\x3d[a-f\d]{80,140}$/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 80 140) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Pi\x0a")))))
; (\d*)'*-*(\d*)/*(\d*)"
(assert (not (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.* (str.to.re "'")) (re.* (str.to.re "-")) (re.* (re.range "0" "9")) (re.* (str.to.re "/")) (re.* (re.range "0" "9")) (str.to.re "\x22\x0a")))))
(check-sat)
