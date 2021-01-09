(declare-const X String)
; /\.jpg\x20HTTP\/1\.[01]\r\nUser\x2dAgent\x3a\x20[a-z]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\.br\r\n\r\n$/
(assert (not (str.in.re X (re.++ (str.to.re "/.jpg HTTP/1.") (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range "a" "z")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com.br\x0d\x0a\x0d\x0a/\x0a")))))
; /\x0aArray\x0a\x28\x0a\x20{4}\x5b[a-z\d]{11}\x5d\x20\x3d\x3e\x20\d{16}\x0a\x29/i
(assert (str.in.re X (re.++ (str.to.re "/\x0aArray\x0a(\x0a") ((_ re.loop 4 4) (str.to.re " ")) (str.to.re "[") ((_ re.loop 11 11) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "] => ") ((_ re.loop 16 16) (re.range "0" "9")) (str.to.re "\x0a)/i\x0a"))))
(check-sat)
