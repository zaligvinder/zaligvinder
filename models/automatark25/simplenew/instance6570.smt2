(declare-const X String)
; (0?[1-9]|[1-9][0-9])[0-9]{6}(-| )?[trwagmyfpdxbnjzsqvhlcke]
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " "))) (re.union (str.to_re "t") (str.to_re "r") (str.to_re "w") (str.to_re "a") (str.to_re "g") (str.to_re "m") (str.to_re "y") (str.to_re "f") (str.to_re "p") (str.to_re "d") (str.to_re "x") (str.to_re "b") (str.to_re "n") (str.to_re "j") (str.to_re "z") (str.to_re "s") (str.to_re "q") (str.to_re "v") (str.to_re "h") (str.to_re "l") (str.to_re "c") (str.to_re "k") (str.to_re "e")) (str.to_re "\u{a}"))))
(check-sat)
