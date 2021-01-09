(declare-const X String)
; \d+\s*[.'-]\s*\d+\s*[\d+.m\"]*
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re ".") (str.to.re "'") (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "+") (str.to.re ".") (str.to.re "m") (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
