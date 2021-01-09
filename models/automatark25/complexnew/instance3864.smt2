(declare-const X String)
; (\d{3}\-\d{2}\-\d{4})
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))))))
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "TOOLBAR") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a"))))
; Host\x3Aact=Host\x3aUser-Agent\x3AUser-Agent\x3ALiteselect\x2FGet
(assert (str.in.re X (str.to.re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\x0a")))
; \x7CConnected\s+adblock\x2Elinkz\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "|Connected") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adblock.linkz.com\x0a")))))
(check-sat)
