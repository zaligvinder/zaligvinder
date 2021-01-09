(declare-const X String)
; ^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+") (re.range "1" "9") (re.* (re.range "0" "9")) (re.union (re.++ (str.to.re "(") (re.* (re.range "0" "9")) (str.to.re ")")) (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (str.to.re "-"))))) (re.opt (str.to.re "0")) (re.range "1" "9") (re.* (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " "))) (str.to.re "\x0a"))))
(check-sat)
