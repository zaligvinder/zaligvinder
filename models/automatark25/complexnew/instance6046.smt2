(declare-const X String)
; (([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?){1}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ (re.* ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/")))) (re.opt (re.union (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "==")))))) (str.to.re "\x0a")))))
; /\/home\/index.asp\?typeid\=[0-9]{1,3}/Ui
(assert (str.in.re X (re.++ (str.to.re "//home/index") re.allchar (str.to.re "asp?typeid=") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; http\s+Host\x3A[^\n\r]*WinInet3Azopabora\x2Einfo\x2Fnotifier\x2FUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "http") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "WinInet3Azopabora.info/notifier/User-Agent:\x0a"))))
(check-sat)
