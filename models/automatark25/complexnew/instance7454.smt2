(declare-const X String)
; /^\/\?[A-Za-z0-9_-]{15}=l3S/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (str.to.re "=l3S/U\x0a"))))
; \x2Fcs\x2Fpop4\x2FUser-Agent\x3Akitwww\x2Eborlander\x2Ecom\x2Ecn
(assert (str.in.re X (str.to.re "/cs/pop4/User-Agent:kitwww.borlander.com.cn\x0a")))
; /\.jpg\x20HTTP\/1\.[01]\r\nUser\x2dAgent\x3a\x20[a-z]+\r\nHost\x3a\x20[a-z0-9\x2d\x2e]+\.com\.br\r\n\r\n$/
(assert (str.in.re X (re.++ (str.to.re "/.jpg HTTP/1.") (re.union (str.to.re "0") (str.to.re "1")) (str.to.re "\x0d\x0aUser-Agent: ") (re.+ (re.range "a" "z")) (str.to.re "\x0d\x0aHost: ") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".com.br\x0d\x0a\x0d\x0a/\x0a"))))
; jsp\s+pjpoptwql\x2frlnj[^\n\r]*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "jsp") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnj") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
(check-sat)
