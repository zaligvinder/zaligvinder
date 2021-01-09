(declare-const X String)
; (0[1-9]|[12][0-9]|3[01])\s(J(anuary|uly)|Ma(rch|y)|August|(Octo|Decem)ber)\s[1-9][0-9]{3}|
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (re.++ (str.to.re "J") (re.union (str.to.re "anuary") (str.to.re "uly"))) (re.++ (str.to.re "Ma") (re.union (str.to.re "rch") (str.to.re "y"))) (str.to.re "August") (re.++ (re.union (str.to.re "Octo") (str.to.re "Decem")) (str.to.re "ber"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ok\*\-\*PasswordAgent\x3Cchat\x3E
(assert (str.in.re X (str.to.re "ok*-*PasswordAgent<chat>\x1b\x0a")))
(check-sat)
