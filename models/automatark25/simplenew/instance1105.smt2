(declare-const X String)
; ^(\+?36)?[ -]?(\d{1,2}|(\(\d{1,2}\)))/?([ -]?\d){6,7}$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) (str.to_re "36"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "(") ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ")"))) (re.opt (str.to_re "/")) ((_ re.loop 6 7) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
