(declare-const X String)
; ads\.grokads\.com\s+deskwizz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "ads.grokads.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "deskwizz.com\x0a"))))
(check-sat)
