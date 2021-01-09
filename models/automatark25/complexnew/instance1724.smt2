(declare-const X String)
; /\x2ewrf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.wrf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a")))
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (str.in.re X (str.to.re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\x0a")))
(check-sat)
