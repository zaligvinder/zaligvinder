(declare-const X String)
; /\x2eair([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.air") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; http\s+Host\x3A[^\n\r]*WinInet3Azopabora\x2Einfo\x2Fnotifier\x2FUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "WinInet3Azopabora.info/notifier/User-Agent:\x0a")))))
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re "+") (str.to.re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to.re "\x0a"))))
; www\x2Eonlinecasinoextra\x2EcomWindows
(assert (not (str.in.re X (str.to.re "www.onlinecasinoextra.comWindows\x0a"))))
(check-sat)
