(declare-const X String)
; /^\x01\x02.{0,50}[a-zA-Z]{10}\x2fPK.{0,50}[a-zA-Z]{10}\x2f[a-zA-Z]{7}\.classPK/sR
(assert (not (str.in.re X (re.++ (str.to.re "/\x01\x02") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/PK") ((_ re.loop 0 50) re.allchar) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "/") ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".classPK/sR\x0a")))))
; /((\d){2})?(\s|-)?((\d){2,4})?(\s|-){1}((\d){8})$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt ((_ re.loop 2 4) (re.range "0" "9"))) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "/\x0a")))))
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (str.in.re X (str.to.re "Host:OnlineUser-Agent:www.vip-se.com\x13\x0a")))
; OSSProxy\d+X-Mailer\x3Abacktrust\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "OSSProxy") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.com\x0a"))))
(check-sat)
