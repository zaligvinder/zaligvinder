(declare-const X String)
; ^[0][5][0]-\d{7}|[0][5][2]-\d{7}|[0][5][4]-\d{7}|[0][5][7]-\d{7}$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "050-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "052-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "054-") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to.re "057-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))))
; www\x2Eserverlogic3\x2Ecom\d+ToolBar\s+HWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:\x0a"))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a")))
(check-sat)
