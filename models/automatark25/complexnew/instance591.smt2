(declare-const X String)
; User-Agent\x3A\s+dist\x2Eatlas\x2Dia\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "dist.atlas-ia.com\x0a"))))
; \x7D\x7BUser\x3A\x7D\x7BTrojan\x3ASPYSubject\x3A\swww\.fast-finder\.comhostieLogger
(assert (str.in.re X (re.++ (str.to.re "}{User:}{Trojan:SPYSubject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.comhostieLogger\x0a"))))
; /filename=[^\n]*\x2echm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".chm/i\x0a"))))
(check-sat)
