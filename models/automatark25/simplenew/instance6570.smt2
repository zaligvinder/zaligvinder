(declare-const X String)
; (0?[1-9]|[1-9][0-9])[0-9]{6}(-| )?[trwagmyfpdxbnjzsqvhlcke]
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) (re.union (str.to.re "t") (str.to.re "r") (str.to.re "w") (str.to.re "a") (str.to.re "g") (str.to.re "m") (str.to.re "y") (str.to.re "f") (str.to.re "p") (str.to.re "d") (str.to.re "x") (str.to.re "b") (str.to.re "n") (str.to.re "j") (str.to.re "z") (str.to.re "s") (str.to.re "q") (str.to.re "v") (str.to.re "h") (str.to.re "l") (str.to.re "c") (str.to.re "k") (str.to.re "e")) (str.to.re "\x0a"))))
(check-sat)
