(declare-const X String)
; (\+?1[- .]?)?[.\(]?[\d^01]\d{2}\)?[- .]?\d{3}[- .]?\d{4}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "1") (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))))) (re.opt (re.union (str.to.re ".") (str.to.re "("))) (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "0") (str.to.re "1")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\x2ef4b([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.f4b") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^([0-1]?[0-9]{1}/[0-3]?[0-9]{1}/20[0-9]{2})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.range "0" "1")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/") (re.opt (re.range "0" "3")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "/20") ((_ re.loop 2 2) (re.range "0" "9")))))
(check-sat)
