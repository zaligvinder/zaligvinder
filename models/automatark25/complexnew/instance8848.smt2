(declare-const X String)
; ^\$?([1-9][0-9]{3,}(\.\d{2})?|(\d{1,3}\,\d{3}|\d{1,3}\,\d{3}(\.\d{2})?)|(\d{1,3}\,\d{3}|\d{1,3}\,\d{3}\,\d{3}(\.\d{2})?)*)?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.opt (re.union (re.++ (re.range "1" "9") (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.* (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))) (str.to.re "\x0a")))))
; (([0-1][0-9])|([2][0-3])):([0-5][0-9]):([0-5][0-9])
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re "::\x0a") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9"))))
; X-Mailer\x3Acom\x18\x16dcww\x2Edmcast\x2EcomHost\x3Adist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (str.to.re "X-Mailer:\x13com\x18\x16dcww.dmcast.comHost:dist.atlas-ia.com\x0a")))
(check-sat)
