(declare-const X String)
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (str.to.re "InformationHost:badurl.grandstreetinteractive.com\x0a"))))
; FTPHost\x3AUser-Agent\x3aUser\x3AdistID=deskwizz\x2Ecom
(assert (not (str.in.re X (str.to.re "FTPHost:User-Agent:User:distID=deskwizz.com\x0a"))))
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (not (str.in.re X (re.++ (str.to.re "/agent_") (re.union (str.to.re "win") (str.to.re "lin") (str.to.re "mac")) (str.to.re "_helper.jar/siU\x0a")))))
(check-sat)
