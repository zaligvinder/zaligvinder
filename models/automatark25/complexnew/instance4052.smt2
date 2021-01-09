(declare-const X String)
; \b(0?[1-9]|1[0-2])(\-)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\-)(0[0-8])\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "-") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "-\x0a0") (re.range "0" "8")))))
; Host\x3A\s+ulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoycWinSession/client/*PORT1*\x0a"))))
; ^(\+?36)?[ -]?(\d{1,2}|(\(\d{1,2}\)))/?([ -]?\d){6,7}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "36"))) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ")"))) (re.opt (str.to.re "/")) ((_ re.loop 6 7) (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
