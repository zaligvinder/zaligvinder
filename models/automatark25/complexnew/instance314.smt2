(declare-const X String)
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (str.in.re X (str.to.re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\x0a")))
; Spy\-Locked\s+ExploiterSchwindler\x2Fr\x2Fkeys\x2Fkeys
(assert (not (str.in.re X (re.++ (str.to.re "Spy-Locked") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ExploiterSchwindler/r/keys/keys\x0a")))))
; EFError.*Host\x3A\swww\x2emalware-stopper\x2ecom
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a"))))
(check-sat)
