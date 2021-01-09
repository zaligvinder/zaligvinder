(declare-const X String)
; ^(Op(.|us))(\s)[1-9](\d)*((,)?(\s)N(o.|um(.|ber))\s[1-9](\d)*)?$
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "1" "9") (re.* (re.range "0" "9")) (re.opt (re.++ (re.opt (str.to.re ",")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "N") (re.union (re.++ (str.to.re "o") re.allchar) (re.++ (str.to.re "um") (re.union re.allchar (str.to.re "ber")))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re "\x0aOp") (re.union re.allchar (str.to.re "us")))))
(check-sat)
