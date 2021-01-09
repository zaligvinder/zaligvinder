(declare-const X String)
; ^-?\d+([.,]?\d+)?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (str.in.re X (re.++ (str.to.re "A-311") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Attached") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.comhoroscope2\x0a"))))
; username=(.*)&password=(.*)
(assert (not (str.in.re X (re.++ (str.to.re "username=") (re.* re.allchar) (str.to.re "&password=") (re.* re.allchar) (str.to.re "\x0a")))))
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (str.in.re X (re.++ (str.to.re "search.dropspam.com") (re.* re.allchar) (str.to.re "SupportFiles\x13") (re.* re.allchar) (str.to.re "Referer:\x0a"))))
(check-sat)
