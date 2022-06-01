(declare-const X String)
; ^[0-2]?[1-9]{1}$|^3{1}[01]{1}$
(assert (not (str.in_re X (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ ((_ re.loop 1 1) (str.to_re "3")) ((_ re.loop 1 1) (re.union (str.to_re "0") (str.to_re "1"))) (str.to_re "\u{a}"))))))
(check-sat)
