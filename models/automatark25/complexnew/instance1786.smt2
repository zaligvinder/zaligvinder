(declare-const X String)
; ^\d{1,7}$
(assert (str.in.re X (re.++ ((_ re.loop 1 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3AtoUser-Agent\x3AClientsConnected-
(assert (not (str.in.re X (str.to.re "Host:toUser-Agent:ClientsConnected-\x0a"))))
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "TOOLBAR") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a"))))
; ^[B|K|T|P][A-Z][0-9]{4}$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "B") (str.to.re "|") (str.to.re "K") (str.to.re "T") (str.to.re "P")) (re.range "A" "Z") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
