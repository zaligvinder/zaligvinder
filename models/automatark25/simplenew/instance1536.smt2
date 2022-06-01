(declare-const X String)
; ^\d*\d?((5)|(0))\.?((0)|(00))?$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.union (str.to_re "5") (str.to_re "0")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "0") (str.to_re "00"))) (str.to_re "\u{a}")))))
(check-sat)
