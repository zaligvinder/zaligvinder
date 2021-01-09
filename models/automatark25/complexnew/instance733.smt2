(declare-const X String)
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:Host:Bar/newsurfer4/\x0a")))))
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "MSNLOGOVNUsertooffers.bullseye-network.com\x0a")))
; node=Host\x3A\x3Fsearch\x3DversionContactNETObserve
(assert (not (str.in.re X (str.to.re "node=Host:?search=versionContactNETObserve\x0a"))))
(check-sat)
