(declare-const X String)
; Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (str.to.re "Subject:as.starware.com/dp/search?x=\x0a")))
; Stealthwww\x2Emyarmory\x2Ecomresultsmaster\x2Ecom
(assert (str.in.re X (str.to.re "Stealthwww.myarmory.comresultsmaster.com\x13\x0a")))
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (str.in.re X (re.++ (str.to.re "sponsor2.ucmore.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:/ezsb\x0a"))))
(check-sat)
