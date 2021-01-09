(declare-const X String)
; User-Agent\x3a\s+sErver\s+-~-GREATHost\x3a
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-~-GREATHost:\x0a"))))
; ^([0-9][0-9])[.]([0-9][0-9])[.]([0-9][0-9])$
(assert (str.in.re X (re.++ (str.to.re "..\x0a") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (not (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a"))))
; Web-Mail\dHost\x3AHost\x3ALOG
(assert (str.in.re X (re.++ (str.to.re "Web-Mail") (re.range "0" "9") (str.to.re "Host:Host:LOG\x0a"))))
; IndyHost\x3AGirlFriendReferer\x3A
(assert (str.in.re X (str.to.re "IndyHost:GirlFriendReferer:\x0a")))
(check-sat)
