(declare-const X String)
; /\x2ehta([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.hta") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; www\.thecommunicator\.net\d+http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a")))))
; ^UA-\d+-\d+$
(assert (not (str.in.re X (re.++ (str.to.re "UA-") (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; Stablecmemailyxegtd\x2fefcwgUin=PromulGate
(assert (not (str.in.re X (str.to.re "Stablecmemailyxegtd/efcwgUin=PromulGate\x0a"))))
(check-sat)
