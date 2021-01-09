(declare-const X String)
; <[ \t]*[iI][mM][gG][ \t]*[sS][rR][cC][ \t]*=[ \t]*['\"]([^'\"]+)
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "g") (str.to.re "G")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "r") (str.to.re "R")) (re.union (str.to.re "c") (str.to.re "C")) (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09"))) (re.union (str.to.re "'") (str.to.re "\x22")) (re.+ (re.union (str.to.re "'") (str.to.re "\x22"))) (str.to.re "\x0a")))))
(check-sat)
