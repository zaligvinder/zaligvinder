(declare-const X String)
; /filename=[^\n]*\x2edae/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dae/i\x0a")))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Desktop") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "IDENTIFY666User-Agent:[Static\x0a"))))
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (str.in.re X (str.to.re "areHost:e2give.comHost:X-Mailer:\x13sportsHost:Toolbar\x0a")))
; t=ProtoUser-Agent\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in.re X (str.to.re "t=ProtoUser-Agent:quick.qsrch.com\x0a")))
; (a|A)
(assert (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "A")) (str.to.re "\x0a"))))
(check-sat)
