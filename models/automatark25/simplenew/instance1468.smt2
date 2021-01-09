(declare-const X String)
; ^((1[01])|(\d)):[0-5]\d(:[0-5]\d)?\s?([apAP][Mm])?$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re "a") (str.to.re "p") (str.to.re "A") (str.to.re "P")) (re.union (str.to.re "M") (str.to.re "m")))) (str.to.re "\x0a"))))
(check-sat)
