(declare-const X String)
; ^((([+])?[1])?\s{0,1}\d{3}\s{0,1}\d{3}\s{0,1}\d{4})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "1"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
