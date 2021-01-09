(declare-const X String)
; www\x2Ezhongsou\x2Ecom\w+FTX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "www.zhongsou.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "FTX-Mailer:\x13\x0a"))))
(check-sat)
