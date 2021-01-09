(declare-const X String)
; RootviewNetControl\x2EServerdata2\.activshopper\.com
(assert (str.in.re X (str.to.re "RootviewNetControl.Server\x13data2.activshopper.com\x0a")))
; SpyAgent\d+sErver\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.range "0" "9")) (str.to.re "sErver") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; Ts2\x2F\s+insertinfoSnakeUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Ts2/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insertinfoSnakeUser-Agent:\x0a"))))
; Referer\x3AUser-Agent\x3AFrom\x3AUser-Agent\x3Aadfsgecoiwnf
(assert (not (str.in.re X (str.to.re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\x1b\x0a"))))
(check-sat)
