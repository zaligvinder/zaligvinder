(declare-const X String)
; ^[+-]?\d*(([,.]\d{3})+)?([,.]\d+)?([eE][+-]?\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.* (re.range "0" "9")) (re.opt (re.+ (re.++ (re.union (str.to.re ",") (str.to.re ".")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.opt (re.++ (re.union (str.to.re ",") (str.to.re ".")) (re.+ (re.range "0" "9")))) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a"))))
(check-sat)
