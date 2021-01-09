(declare-const X String)
; ^1?[1-9]$|^[1-2]0$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "9")) (re.++ (re.range "1" "2") (str.to.re "0\x0a")))))
; ^(-?[1-9](\.\d+)?)((\s?[X*]\s?10[E^]([+-]?\d+))|(E([+-]?\d+)))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "X") (str.to.re "*")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "10") (re.union (str.to.re "E") (str.to.re "^")) (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "E") (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.range "1" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))
(check-sat)
