(declare-const X String)
; ^((00|\+)49)?(0?[2-9][0-9]{1,})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49"))) (str.to.re "\x0a") (re.opt (str.to.re "0")) (re.range "2" "9") (re.+ (re.range "0" "9")))))
; <[ \t]*[iI][mM][gG][ \t]*[sS][rR][cC][ \t]*=[ \t]*['\"]([^'\"]+)
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "g") (str.to.re "G")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "c") (str.to.re "C")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "'") (str.to.re "\x22")) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "\x0a")))))
; Host\x3a\dATTENTION\x3A[^\n\r]*From\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "ATTENTION:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "From:User-Agent:\x0a")))))
(check-sat)
