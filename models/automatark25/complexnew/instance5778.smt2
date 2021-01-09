(declare-const X String)
; /\.jpg\x20HTTP\/1\.[01]\r\nUser\x2dAgent\x3a\x20[a-z]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\.br\r\n\r\n$/
(assert (str.in.re X (re.++ (str.to.re "/.jpg HTTP/1.") (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range "a" "z")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com.br\x0d\x0a\x0d\x0a/\x0a"))))
; ([0-9]{11}$)|(^[7-9][0-9]{9}$)
(assert (str.in.re X (re.union ((_ re.loop 11 11) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.range "7" "9") ((_ re.loop 9 9) (re.range "0" "9"))))))
(check-sat)
