(declare-const X String)
; /filename=[a-z]+\.jat/
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "a" "z")) (str.to.re ".jat/\x0a"))))
; hjhgquqssq\x2fpjm[^\n\r]*User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "hjhgquqssq/pjm") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
(check-sat)
