(declare-const X String)
; Host\x3A\dName=Your\+Host\+is\x3A.*has\s+ComputerKeylogger\x2EcomHost\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:") (re.* re.allchar) (str.to.re "has") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ComputerKeylogger.comHost:\x0a"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; ^(\+[1-9]\d+) ([1-9]\d+) ([1-9]\d+)(\-\d+){0,1}$|^(0\d+) ([1-9]\d+)(\-\d+){0,1}$|^([1-9]\d+)(\-\d+){0,1}$
(assert (str.in.re X (re.union (re.++ (str.to.re "  ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "+") (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (str.to.re " ") (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "0") (re.+ (re.range "0" "9")) (re.range "1" "9") (re.+ (re.range "0" "9"))) (re.++ (re.opt (re.++ (str.to.re "-") (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.range "1" "9") (re.+ (re.range "0" "9"))))))
(check-sat)
