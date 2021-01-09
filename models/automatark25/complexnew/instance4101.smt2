(declare-const X String)
; /filename=[^\n]*\x2epng/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a")))))
; \\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}
(assert (str.in.re X (re.++ (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x0a"))))
; /\x2eru\/\w+\?\d$/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.ru/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "?") (re.range "0" "9") (str.to.re "/miU\x0a")))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
(check-sat)
