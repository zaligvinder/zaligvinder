(declare-const X String)
; ((\(?\d{2,5}\)?)?(\d|-| )?(15((\d|-| ){6,13})))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.++ (re.opt (str.to.re "(")) ((_ re.loop 2 5) (re.range "0" "9")) (re.opt (str.to.re ")")))) (re.opt (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " "))) (str.to.re "15") ((_ re.loop 6 13) (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " ")))))))
(check-sat)
