(declare-const X String)
; logs\s+TCP.*Toolbarads\.grokads\.com
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TCP") (re.* re.allchar) (str.to.re "Toolbarads.grokads.com\x0a"))))
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (not (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a")))))
(check-sat)
