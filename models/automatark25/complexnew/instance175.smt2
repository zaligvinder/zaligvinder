(declare-const X String)
; ^(\([2-9]|[2-9])(\d{2}|\d{2}\))(-|.|\s)?\d{3}(-|.|\s)?\d{4}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "(") (re.range "2" "9")) (re.range "2" "9")) (re.union ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")"))) (re.opt (re.union (str.to.re "-") re.allchar (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") re.allchar (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; Ready\s+Client\s+MyBrowserHost\x3asecurityon\x3AHost\x3ARedirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowserHost:securityon:Host:Redirector\x22ServerHost:X-Mailer:\x13\x0a"))))
; Host\x3AUser-Agent\x3aHost\x3APortScaner
(assert (str.in.re X (str.to.re "Host:User-Agent:Host:PortScaner\x0a")))
; ^([0-9]{12},)+[0-9]{12}$|^([0-9]{12})$
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re "\x0a"))))))
; /\r\nLocation\x3a\x20https\x3a\x2f{2}dl\.dropboxusercontent\.com\/[a-zA-Z\d\x2f]{5,32}\/avcheck\.exe\r\n\r\n$/H
(assert (not (str.in.re X (re.++ (str.to.re "/\x0d\x0aLocation: https:") ((_ re.loop 2 2) (str.to.re "/")) (str.to.re "dl.dropboxusercontent.com/") ((_ re.loop 5 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/"))) (str.to.re "/avcheck.exe\x0d\x0a\x0d\x0a/H\x0a")))))
(check-sat)
