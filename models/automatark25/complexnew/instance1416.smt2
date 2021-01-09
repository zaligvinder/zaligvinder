(declare-const X String)
; horoscope2YAHOOwww\x2e2-seek\x2ecom\x2fsearchHost\x3A
(assert (str.in.re X (str.to.re "horoscope2YAHOOwww.2-seek.com/searchHost:\x0a")))
; /filename=[^\n]*\x2em4p/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4p/i\x0a")))))
(check-sat)
