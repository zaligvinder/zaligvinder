(declare-const X String)
; ^([0-9a-fA-F]){8}$
(assert (str.in.re X (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; /\/fnts\.html$/U
(assert (not (str.in.re X (str.to.re "//fnts.html/U\x0a"))))
; /\x2efli([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.fli") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^(a-z|A-Z|0-9)*[^#$%^&*()']*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "a-z") (str.to.re "A-Z") (str.to.re "0-9"))) (re.* (re.union (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "&") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "'"))) (str.to.re "\x0a")))))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "DK") (re.opt (str.to.re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
