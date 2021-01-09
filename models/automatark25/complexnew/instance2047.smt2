(declare-const X String)
; X-Mailer\x3Acom\x18\x16dcww\x2Edmcast\x2EcomHost\x3Adist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13com\x18\x16dcww.dmcast.comHost:dist.atlas-ia.com\x0a"))))
; Software\s+User-Agent\x3A.*FictionalUser-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Software") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "FictionalUser-Agent:User-Agent:\x0a")))))
; Host\x3A\s+Online100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13\x0a"))))
; ^(\d{5}-\d{2}-\d{7})*$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^(([a-zA-Z]{2})([0-9]{6}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")))))
(check-sat)
