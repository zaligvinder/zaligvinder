(declare-const X String)
; TOOLBAR\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "TOOLBAR") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a")))))
; adblock\x2Elinkz\x2Ecomwww\.iggsey\.comHost\x3A
(assert (not (str.in.re X (str.to.re "adblock.linkz.comwww.iggsey.comHost:\x0a"))))
(check-sat)
