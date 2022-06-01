(declare-const X String)
; ^\d*\.?(((5)|(0)|))?$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "5") (str.to_re "0"))) (str.to_re "\u{a}")))))
(check-sat)
