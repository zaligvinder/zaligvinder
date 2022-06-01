(declare-const X String)
; ^(\+[1-9][0-9]*(\([0-9]*\)|-[0-9]*-))?[0]?[1-9][0-9\- ]*$
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "+") (re.range "1" "9") (re.* (re.range "0" "9")) (re.union (re.++ (str.to_re "(") (re.* (re.range "0" "9")) (str.to_re ")")) (re.++ (str.to_re "-") (re.* (re.range "0" "9")) (str.to_re "-"))))) (re.opt (str.to_re "0")) (re.range "1" "9") (re.* (re.union (re.range "0" "9") (str.to_re "-") (str.to_re " "))) (str.to_re "\u{a}")))))
(check-sat)
