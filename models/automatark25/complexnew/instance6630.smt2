(declare-const X String)
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (not (str.in.re X (str.to.re "horoscope2YAHOOwww.2-seek.com/searchHost:\x0a"))))
; ^\(0[1-9]{1}\)[0-9]{8}$
(assert (not (str.in.re X (re.++ (str.to.re "(0") ((_ re.loop 1 1) (re.range "1" "9")) (str.to.re ")") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
