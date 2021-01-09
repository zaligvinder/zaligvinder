(declare-const X String)
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (str.in.re X (str.to.re "Stablecmemailyxegtd/efcwgUin=PromulGate\x0a")))
; ^UA-\d+-\d+$
(assert (str.in.re X (re.++ (str.to.re "UA-") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; www\.thecommunicator\.net\d+http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a")))))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (not (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a")))))
(check-sat)
