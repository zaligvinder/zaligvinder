(declare-const X String)
; ^(\d)(\.)(\d)+\s(x)\s(10)(e|E|\^)(-)?(\d)+$
(assert (str.in.re X (re.++ (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "x") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "10") (re.union (str.to.re "e") (str.to.re "E") (str.to.re "^")) (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
