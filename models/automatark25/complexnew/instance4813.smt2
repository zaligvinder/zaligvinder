(declare-const X String)
; AdTools\sdownloadfile\x2eorg\w+com\x3E[^\n\r]*as\x2Estarware\x2EcomOS\x2FSSKCstech\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "AdTools") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "as.starware.comOS/SSKCstech.web-nexus.net\x0a"))))
; /\/\?[0-9a-f]{32}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/Ui\x0a")))))
; Host\x3A\dName=Your\+Host\+is\x3A.*has\s+ComputerKeylogger\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:") (re.* re.allchar) (str.to.re "has") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ComputerKeylogger.comHost:\x0a")))))
; X-Mailer\x3A\s+www\.iggsey\.com
(assert (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.iggsey.com\x0a"))))
; /\x2ejar([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jar") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
