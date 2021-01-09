(declare-const X String)
; ^(1?)(-| ?)(\()?([0-9]{3})(\)|-| |\)-|\) )?([0-9]{3})(-| )?([0-9]{4}|[0-9]{4})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "1")) (re.union (str.to.re "-") (re.opt (str.to.re " "))) (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re "-") (str.to.re " ") (str.to.re ")-") (str.to.re ") "))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) (re.union ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=p50[a-z0-9]{9}[0-9]{12}\.pdf/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=p50") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ".pdf/H\x0a")))))
(check-sat)
