(declare-const X String)
; st=\s+www\.iggsey\.com.*BackAtTaCkadserver\.warezclient\.com
(assert (not (str.in.re X (re.++ (str.to.re "st=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.com") (re.* re.allchar) (str.to.re "BackAtTaCkadserver.warezclient.com\x0a")))))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (str.in.re X (str.to.re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\x0a")))
; /encoding\x3D[\x22\x27][^\x22\x27]{1024}/
(assert (not (str.in.re X (re.++ (str.to.re "/encoding=") (re.union (str.to.re "\x22") (str.to.re "'")) ((_ re.loop 1024 1024) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/\x0a")))))
; (\+)?(\()?(\d+){1,4}(\))?(\s)?(-)?(\d+){1,3}(\s)?(-)?(\d+){1,4}(\s)?(-)?(\d+){1,4}(\s)?(-)?(\d+){1,4}
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (str.to.re "(")) ((_ re.loop 1 4) (re.+ (re.range "0" "9"))) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.+ (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) ((_ re.loop 1 4) (re.+ (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) ((_ re.loop 1 4) (re.+ (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) ((_ re.loop 1 4) (re.+ (re.range "0" "9"))) (str.to.re "\x0a"))))
; ((PL|SK)-?)?[0-9]{10}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "PL") (str.to.re "SK")) (re.opt (str.to.re "-")))) ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
