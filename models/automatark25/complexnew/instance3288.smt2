(declare-const X String)
; Host\x3a\dgpstool\x2eglobaladserver\x2ecomdesksearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "gpstool.globaladserver.comdesksearch.dropspam.com\x0a")))))
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /_X(86|64)&a4=/P
(assert (not (str.in.re X (re.++ (str.to.re "/_X") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "&a4=/P\x0a")))))
; \x2APORT2\x2A\w+Host\x3a\s+jspIDENTIFYserverHOST\x3ASubject\x3Ai\-femdom\x2EcomUser-Agent\x3Alog\=\x7BIP\x3A
(assert (not (str.in.re X (re.++ (str.to.re "*PORT2*") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jspIDENTIFYserverHOST:Subject:i-femdom.comUser-Agent:log={IP:\x0a")))))
; /IPHONE\d+.\d/sH
(assert (not (str.in.re X (re.++ (str.to.re "/IPHONE") (re.+ (re.range "0" "9")) re.allchar (re.range "0" "9") (str.to.re "/sH\x0a")))))
(check-sat)
