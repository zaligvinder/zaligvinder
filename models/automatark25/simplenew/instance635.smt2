(declare-const X String)
; /^\s*?EHLO\s+\d[\d\x2e]{500}/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "EHLO") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") ((_ re.loop 500 500) (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re "/\x0a")))))
(check-sat)
