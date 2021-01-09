(declare-const X String)
; ^(0?[1-9]|1[0-2])(\:)([0-5][0-9])(\:)([0-5][0-9]) (AM|PM)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":: ") (re.union (str.to.re "AM") (str.to.re "PM")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
(check-sat)
