(declare-const X String)
; /\x2fkills\x2etxt\x3f(t\d|p)\x3d\d{6}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//kills.txt?") (re.union (re.++ (str.to.re "t") (re.range "0" "9")) (str.to.re "p")) (str.to.re "=") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; Host\x3A\s+Host\x3A.*c=MicrosoftStartupStarLoggerServerX-Mailer\x3a
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "c=MicrosoftStartupStarLoggerServerX-Mailer:\x13\x0a"))))
; <[ \t]*[iI][mM][gG][ \t]*[sS][rR][cC][ \t]*=[ \t]*['\"]([^'\"]+)
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "g") (str.to.re "G")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "c") (str.to.re "C")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "'") (str.to.re "\x22")) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "\x0a"))))
(check-sat)
