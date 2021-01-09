(declare-const X String)
; hjhgquqssq\x2fpjm[^\n\r]*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "hjhgquqssq/pjm") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
(check-sat)
