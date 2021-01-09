(declare-const X String)
; [+ ]?\s?\d{1,3}[- ]?\d{1,3}[- ]?\d{4}[- ]?\d{4}
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re " "))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
