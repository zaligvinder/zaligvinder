(declare-const X String)
; TSA\x2FS\x3aUsers\x5chttp\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (str.to.re "TSA/S:Users\x5chttp://tv.seekmo.com/showme.aspx?keyword=\x0a")))
(check-sat)
