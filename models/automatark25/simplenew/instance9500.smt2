(declare-const X String)
; www\x2Ezhongsou\x2Ecom\sisHost\x3Aare
(assert (not (str.in.re X (re.++ (str.to.re "www.zhongsou.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "isHost:are\x0a")))))
(check-sat)
