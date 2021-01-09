(declare-const X String)
; ref\x3D\x25user\x5Fid\s+X-Mailer\x3aSpyBuddyUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "ref=%user_id") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13SpyBuddyUser-Agent:\x0a"))))
; Information.*Firewall\s+ised2k\xc0STATUS\xc0Server
(assert (str.in.re X (re.++ (str.to.re "Information") (re.* re.allchar) (str.to.re "Firewall") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ised2k\xc0STATUS\xc0Server\x13\x0a"))))
(check-sat)
