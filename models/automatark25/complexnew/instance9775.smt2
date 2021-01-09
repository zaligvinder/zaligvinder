(declare-const X String)
; /\?id=[A-Z0-9]{20}&cmd=img/U
(assert (str.in.re X (re.++ (str.to.re "/?id=") ((_ re.loop 20 20) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&cmd=img/U\x0a"))))
; Word\s+User-Agent\x3awww\x2Esogou\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:www.sogou.com\x0a")))))
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (not (str.in.re X (re.++ (str.to.re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to.re "TM_SEARCH3engineto=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":\x0a")))))
; Toolbar[^\n\r]*url=\d+Host\x3AWelcome\x2FcommunicatortbGateCrasher
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "url=") (re.+ (re.range "0" "9")) (str.to.re "Host:Welcome/communicatortbGateCrasher\x0a"))))
(check-sat)
