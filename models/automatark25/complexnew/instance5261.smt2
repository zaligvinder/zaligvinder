(declare-const X String)
; ^0$|^0\.{1}(\d{1,2})$|^[1-9]{1}[0-9]*\.?(\d{1,2})$|^[1-9]+[0-9]*$
(assert (str.in.re X (re.union (str.to.re "0") (re.++ (str.to.re "0") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; Warez\s+Online100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (re.++ (str.to.re "Warez") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13\x0a"))))
(check-sat)
