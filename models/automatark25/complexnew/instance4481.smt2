(declare-const X String)
; \x2Fcgi\x2Flogurl\.cgi\s+Host\x3AUser-Agent\x3ASurveillancecom
(assert (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:Surveillance\x13com\x0a"))))
; X-Mailer\x3a\s+cyber@yahoo\x2EcomcuAgent
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "cyber@yahoo.comcuAgent\x0a")))))
; ^[a-zA-Z0-9\.\s]{3,}$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; ^([A-HK-PRSVWY][A-HJ-PR-Y])\s?([0][2-9]|[1-9][0-9])\s?[A-HJ-PR-Z]{3}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "0") (re.range "2" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Z"))) (str.to.re "\x0a") (re.union (re.range "A" "H") (re.range "K" "P") (str.to.re "R") (str.to.re "S") (str.to.re "V") (str.to.re "W") (str.to.re "Y")) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y")))))
; (CY-?)?[0-9]{8}[A-Z]
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CY") (re.opt (str.to.re "-")))) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "Z") (str.to.re "\x0a")))))
(check-sat)
