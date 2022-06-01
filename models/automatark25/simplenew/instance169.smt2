(declare-const X String)
; ^[89]\d{7}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "8") (str.to_re "9")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
