(declare-const X String)
; ref\x3D\x25user\x5Fid\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a"))))
; /^([A-Za-z]){1}([A-Za-z0-9-_.\:])+$/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "_") (str.to.re ".") (str.to.re ":"))) (str.to.re "/\x0a")))))
; 62[0-9]{14,17}
(assert (str.in.re X (re.++ (str.to.re "62") ((_ re.loop 14 17) (re.range "0" "9")) (str.to.re "\x0a"))))
; config\x2E180solutions\x2Ecom\dStable\s+Host\x3a\x7D\x7C
(assert (not (str.in.re X (re.++ (str.to.re "config.180solutions.com") (re.range "0" "9") (str.to.re "Stable") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|\x0a")))))
; protocolNetControl\x2EServerKEYLOGGERUser-Agent\x3A
(assert (str.in.re X (str.to.re "protocolNetControl.Server\x13KEYLOGGERUser-Agent:\x0a")))
(check-sat)
