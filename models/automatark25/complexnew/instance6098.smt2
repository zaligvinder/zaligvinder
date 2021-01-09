(declare-const X String)
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\sMycount\x2Eyok\x2EcomProBuilt-inBasicYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "FunWebProducts") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Mycount.yok.comProBuilt-inBasicYWRtaW46cGFzc3dvcmQ\x0a"))))
; Referer\x3AUser-Agent\x3AFrom\x3AUser-Agent\x3Aadfsgecoiwnf
(assert (not (str.in.re X (str.to.re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\x1b\x0a"))))
; act=\s+smrtshpr-cs-verDANavExcel
(assert (not (str.in.re X (re.++ (str.to.re "act=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "smrtshpr-cs-\x13verDANavExcel\x0a")))))
(check-sat)
