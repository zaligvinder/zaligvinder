(declare-const X String)
; www\x2Elookster\x2Enet\s+Host\x3ADesktopBlade
(assert (not (str.in.re X (re.++ (str.to.re "www.lookster.net") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:DesktopBlade\x0a")))))
; www\x2Eemp3finder\x2Ecom\d+ZOMBIES\x5fHTTP\x5fGET
(assert (str.in.re X (re.++ (str.to.re "www.emp3finder.com") (re.+ (re.range "0" "9")) (str.to.re "ZOMBIES_HTTP_GET\x0a"))))
(check-sat)
