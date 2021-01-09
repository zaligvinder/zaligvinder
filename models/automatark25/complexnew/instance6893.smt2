(declare-const X String)
; twfofrfzlugq\x2feve\.qd\d+
(assert (str.in.re X (re.++ (str.to.re "twfofrfzlugq/eve.qd") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (not (str.in.re X (re.++ (str.to.re "User") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "ResultATTENTION:riggiymd/wdhi.vhi\x0a")))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a")))
; /^\/\d{2,4}\.xap$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re ".xap/U\x0a"))))
(check-sat)
