(declare-const X String)
; Ts2\x2F\s+insertinfoSnakeUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insertinfoSnakeUser-Agent:\x0a"))))
(check-sat)
