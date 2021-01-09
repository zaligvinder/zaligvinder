(declare-const X String)
; (SE-?)?[0-9]{12}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "SE") (re.opt (str.to.re "-")))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a")))))
; Agent\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a"))))
; My\x2Fdesktop\x2FWinSessionHost\x3aOnlineTPSystem\x7D\x7C
(assert (not (str.in.re X (str.to.re "My/desktop/WinSessionHost:OnlineTPSystem}|\x0a"))))
; logsFictionalReporterCookieUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "logsFictionalReporterCookieUser-Agent:\x0a"))))
(check-sat)
