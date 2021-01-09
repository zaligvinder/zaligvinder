(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a")))))
; Host\x3A\d+UI2.*areprotocolhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "UI2") (re.* re.allchar) (str.to.re "areprotocolhttp://www.searchinweb.com/search.php?said=bar\x0a"))))
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (not (str.in.re X (str.to.re "MSNLOGOVNUsertooffers.bullseye-network.com\x0a"))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (not (str.in.re X (str.to.re "User-Agent:Host:Host:SpyBuddy\x0a"))))
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "filename=\x22") (re.range "0" "9") (str.to.re "DA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a")))))
(check-sat)
