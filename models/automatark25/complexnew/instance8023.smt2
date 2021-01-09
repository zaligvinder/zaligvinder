(declare-const X String)
; X-Mailer\x3Acom\x18\x16dcww\x2Edmcast\x2EcomHost\x3Adist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (str.to.re "X-Mailer:\x13com\x18\x16dcww.dmcast.comHost:dist.atlas-ia.com\x0a")))
; ^((02[0-9]{2})|(0[8-9][0-9]{2})|(1[0-9]{3})|(2[0-7][0-9]{2})|(28[0-8][0-9])|(289[0-8])|(29[0-9]{2})|([3-5][0-9]{3})|(6[0-6][0-9]{2})|(67[0-8][0-9])|(679[0-7])|(6[8-9][0-9]{2})|([7-9][0-9]{3}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "02") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "0") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "1") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "28") (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to.re "289") (re.range "0" "8")) (re.++ (str.to.re "29") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "3" "5") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to.re "6") (re.range "0" "6") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "67") (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to.re "679") (re.range "0" "7")) (re.++ (str.to.re "6") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "7" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; SbAts[^\n\r]*Subject\x3a\d+dcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "SbAts") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "dcww.dmcast.com\x0a"))))
(check-sat)
