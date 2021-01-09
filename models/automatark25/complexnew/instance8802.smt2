(declare-const X String)
; Host\x3A\s+twfofrfzlugq\x2feve\.qd\s+\x2Ftoolbar\x2Fsupremetb
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/supremetb\x0a"))))
; ^[a-zA-Z]{1,3}\[([0-9]{1,3})\]
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]\x0a"))))
; onAlertMGS-Internal-Web-Manager
(assert (not (str.in.re X (str.to.re "onAlertMGS-Internal-Web-Manager\x0a"))))
(check-sat)
