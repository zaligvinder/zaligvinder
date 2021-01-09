(declare-const X String)
; ^[A-Z][a-z]+((eir|(n|l)h)(a|o))$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (str.to.re "eir") (re.++ (re.union (str.to.re "n") (str.to.re "l")) (str.to.re "h"))) (re.union (str.to.re "a") (str.to.re "o")))))
; /\x2edib([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dib") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2eswf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".swf/i\x0a")))))
(check-sat)
