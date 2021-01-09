(declare-const X String)
; Host\x3A\d+Subject\x3A[^\n\r]*Seconds\-ovplHost\x3AHost\x3ADownload
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Seconds-ovplHost:Host:Download\x0a"))))
; /&q=[a-f0-9]{32},[a-f0-9]{16}&kgs=/U
(assert (str.in.re X (re.++ (str.to.re "/&q=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ",") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&kgs=/U\x0a"))))
(check-sat)
