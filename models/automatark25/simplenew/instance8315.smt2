(declare-const X String)
; www\x2Elookster\x2Enet\s+Host\x3ADesktopBlade
(assert (str.in.re X (re.++ (str.to.re "www.lookster.net") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:DesktopBlade\x0a"))))
(check-sat)
