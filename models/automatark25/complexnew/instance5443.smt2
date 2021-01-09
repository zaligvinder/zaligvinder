(declare-const X String)
; \x5D\x2520\x5BPort_X-Mailer\x3AX-Mailer\x3awww\.actualnames\.comwebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "]%20[Port_X-Mailer:\x13X-Mailer:\x13www.actualnames.comwebsearch.getmirar.com\x0a"))))
; Host\x3A\d+Subject\x3A[^\n\r]*Seconds\-ovplHost\x3AHost\x3ADownload
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Seconds-ovplHost:Host:Download\x0a"))))
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a")))))
; (\{\\f\d*)\\([^;]+;)
(assert (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";"))))
; [-]?[1-9]\d{0,16}\.?\d{0,2}|[-]?[0]?\.[1-9]{1,2}|[-]?[0]?\.[0-9][1-9]
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "1" "9") ((_ re.loop 0 16) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") ((_ re.loop 1 2) (re.range "1" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") (re.range "0" "9") (re.range "1" "9") (str.to.re "\x0a")))))
(check-sat)
