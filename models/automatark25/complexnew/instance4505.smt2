(declare-const X String)
; /^simple\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/simple|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; \x2Frss\d+Host\x3aTCP\x2FAD\x2FULOGNetBusCookie\x3a
(assert (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "Host:TCP/AD/ULOGNetBusCookie:\x0a"))))
; /^\/f\/1\d{9}\/\d{9,10}(\/\d)+$/U
(assert (not (str.in.re X (re.++ (str.to.re "//f/1") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 9 10) (re.range "0" "9")) (re.+ (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; /\x2eoga([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.oga") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
