(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a")))))
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a")))))
; M\x2Ezip\d+dll\x3F\s+CodeguruBrowserwww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "M.zip") (re.+ (re.range "0" "9")) (str.to.re "dll?") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowserwww.sogou.com\x0a")))))
; /\x3fsv\x3d\d{1,3}\x26tq\x3d/smiU
(assert (str.in.re X (re.++ (str.to.re "/?sv=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "&tq=/smiU\x0a"))))
(check-sat)
