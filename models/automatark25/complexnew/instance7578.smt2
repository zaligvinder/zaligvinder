(declare-const X String)
; gpstool\x2eglobaladserver\x2ecom\daction\x2E\w+data2\.activshopper\.com
(assert (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "data2.activshopper.com\x0a"))))
; /exploit\/(Exploit(App)?|Loader)\.class/ims
(assert (str.in.re X (re.++ (str.to.re "/exploit/") (re.union (re.++ (str.to.re "Exploit") (re.opt (str.to.re "App"))) (str.to.re "Loader")) (str.to.re ".class/ims\x0a"))))
; \x2APORT2\x2A\w+Host\x3a\s+jspIDENTIFYserverHOST\x3ASubject\x3Ai\-femdom\x2EcomUser-Agent\x3Alog\=\x7BIP\x3A
(assert (not (str.in.re X (re.++ (str.to.re "*PORT2*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jspIDENTIFYserverHOST:Subject:i-femdom.comUser-Agent:log={IP:\x0a")))))
(check-sat)
