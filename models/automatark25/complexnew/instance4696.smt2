(declare-const X String)
; /\x2evwr([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.vwr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Arrow") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "whenu.com\x13\x0a")))))
; www\x2Eyoogee\x2EcomserverHost\x3Aref\x3D\x25user\x5Fid
(assert (str.in.re X (str.to.re "www.yoogee.com\x13serverHost:ref=%user_id\x0a")))
; \b(([01]?\d?\d|2[0-4]\d|25[0-5])\.){3}([01]?\d?\d|2[0-4]\d|25[0-5])\b
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "."))) (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x0a")))))
(check-sat)
