(declare-const X String)
; Host\x3A\d+\x2Fcommunicatortb\swww\.fast-finder\.comBrowser\x2FGR
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.comBrowser/GR\x0a")))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a")))))
(check-sat)
