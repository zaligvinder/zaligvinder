(declare-const X String)
; www\.thecommunicator\.net\d+http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
; A + B
(assert (not (str.in.re X (re.++ (str.to.re "A") (re.+ (str.to.re " ")) (str.to.re " B\x0a")))))
; /\x2ewps([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wps") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; User-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:Host:\x0a")))
; UI2Host\x3ADesktopUser-Agent\x3a\x2Fnotifier\x2F
(assert (not (str.in.re X (str.to.re "UI2Host:DesktopUser-Agent:/notifier/\x0a"))))
(check-sat)
