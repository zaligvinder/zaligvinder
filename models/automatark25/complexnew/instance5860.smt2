(declare-const X String)
; http\s+Host\x3A[^\n\r]*WinInet3Azopabora\x2Einfo\x2Fnotifier\x2FUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "http") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "WinInet3Azopabora.info/notifier/User-Agent:\x0a"))))
; /User\x2dAgent\x3a\x20[A-F\d]{32}\r\n/H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
(check-sat)
