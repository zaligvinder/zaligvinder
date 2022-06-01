(declare-const X String)
; ^((8|\+7)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (str.to_re "8") (str.to_re "+7")) (re.opt (re.union (str.to_re "-") (str.to_re " "))))) (re.opt (re.++ (re.opt (str.to_re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re " "))))) ((_ re.loop 7 10) (re.union (re.range "0" "9") (str.to_re "-") (str.to_re " "))) (str.to_re "\u{a}")))))
(check-sat)
