(declare-const X String)
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a"))))
; (^(5[0678])\d{11,18}$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 11 18) (re.range "0" "9")) (str.to.re "5") (re.union (str.to.re "0") (str.to.re "6") (str.to.re "7") (str.to.re "8"))))))
; /^GET\x20\/plus\x2easp\?[^\r\n]*?query=[a-z0-9+\/]{2,40}@{0,2}/i
(assert (str.in.re X (re.++ (str.to.re "/GET /plus.asp?") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "query=") ((_ re.loop 2 40) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) ((_ re.loop 0 2) (str.to.re "@")) (str.to.re "/i\x0a"))))
(check-sat)
