(declare-const X String)
; ^[A-Za-z]{3,4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.comcuAgent\x0a")))))
(check-sat)
