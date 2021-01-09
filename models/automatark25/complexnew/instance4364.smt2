(declare-const X String)
; -[0-9]*[x][0-9]*
(assert (str.in.re X (re.++ (str.to.re "-") (re.* (re.range "0" "9")) (str.to.re "x") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; /\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\x2d[a-z0-9\x2d\x2e]+(\x3a\d{1,5})?\r\n/Hi
(assert (str.in.re X (re.++ (str.to.re "/\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com-") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to.re "\x0d\x0a/Hi\x0a"))))
(check-sat)
