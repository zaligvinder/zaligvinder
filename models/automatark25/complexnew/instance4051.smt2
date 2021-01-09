(declare-const X String)
; /\x2emanifest([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.manifest") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; (?i:[aeiou]+)\B
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u"))) (str.to.re "\x0a"))))
; ^[-+]?\d+([.,]\d{0,2}){0,1}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ereg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".reg/i\x0a")))))
; IPOblivionhoroscopefowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "IPOblivionhoroscopefowclxccdxn/uxwn.ddy\x0a")))
(check-sat)
