(declare-const X String)
; logs\s+TCP.*Toolbarads\.grokads\.com
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TCP") (re.* re.allchar) (str.to.re "Toolbarads.grokads.com\x0a"))))
; ^[\w\W]{1,1500}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1500) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
(check-sat)
