(declare-const X String)
; ^[1-9]0?$
(assert (not (str.in_re X (re.++ (re.range "1" "9") (re.opt (str.to_re "0")) (str.to_re "\u{a}")))))
(check-sat)
