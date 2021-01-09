(declare-const X String)
; engineResultUser-Agent\x3A
(assert (str.in.re X (str.to.re "engineResultUser-Agent:\x0a")))
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspx\x0a"))))
(check-sat)
