(declare-const X String)
; ^(\+?36)?[ -]?(\d{1,2}|(\(\d{1,2}\)))/?([ -]?\d){6,7}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "36"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re "/")) ((_ re.loop 6 7) (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
