(declare-const X String)
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
; ^-?[0-9]\d{0,8}(\.\d{1,4})
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.range "0" "9") ((_ re.loop 0 8) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 1 4) (re.range "0" "9"))))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (not (str.in.re X (str.to.re "e2give.comConnectionSpywww.slinkyslate\x0a"))))
; /^\/[a-f0-9]{32}\.eot$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".eot/U\x0a"))))
; /\x23\d{2}\x3a\d{2}\x3a\d\d$/R
(assert (not (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ":") (re.range "0" "9") (re.range "0" "9") (str.to.re "/R\x0a")))))
(check-sat)
