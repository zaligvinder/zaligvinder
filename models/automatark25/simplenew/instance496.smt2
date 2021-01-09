(declare-const X String)
; /\x2fsoft(64|32)\x2edll$/U
(assert (not (str.in.re X (re.++ (str.to.re "//soft") (re.union (str.to.re "64") (str.to.re "32")) (str.to.re ".dll/U\x0a")))))
(check-sat)
