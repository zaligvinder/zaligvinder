(declare-const X String)
; logs\s+TCP.*Toolbarads\.grokads\.com
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TCP") (re.* re.allchar) (str.to.re "Toolbarads.grokads.com\x0a"))))
; ^([0-9]{6}[\s\-]{1}[0-9]{12}|[0-9]{18})$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 12 12) (re.range "0" "9"))) ((_ re.loop 18 18) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
