(declare-const X String)
; BV_SessionID=@@@@0106700396.1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg.0
(assert (not (str.in.re X (re.++ (str.to.re "BV_SessionID=@@@@0106700396") re.allchar (str.to.re "1206001747@@@@&BV_EngineID=ccckadedjddehggcefecehidfhfdflg") re.allchar (str.to.re "0\x0a")))))
; /xsl\x3Atemplate[^\x3E]*priority\s*\x3D[\s\x22\x27]*[\d\x2D]*[^\s\x22\x27\d\x2d]/smi
(assert (str.in.re X (re.++ (str.to.re "/xsl:template") (re.* (re.comp (str.to.re ">"))) (str.to.re "priority") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "0" "9") (str.to.re "-"))) (re.union (str.to.re "\x22") (str.to.re "'") (re.range "0" "9") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/smi\x0a"))))
; ppcdomain\x2Eco\x2Euk.*Spy\-Locked\s+Exploiter\w+\x2Fr\x2Fkeys\x2FkeysS\x3aUsers\x5cIterenet
(assert (not (str.in.re X (re.++ (str.to.re "ppcdomain.co.uk") (re.* re.allchar) (str.to.re "Spy-Locked") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Exploiter") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/r/keys/keysS:Users\x5cIterenet\x0a")))))
; si=\s+ProAgent\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "si=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ProAgent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:as.starware.com\x0a")))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a")))))
(check-sat)
