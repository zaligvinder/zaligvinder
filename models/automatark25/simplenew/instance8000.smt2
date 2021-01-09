(declare-const X String)
; Subject\x3A\s+www\x2eproventactics\x2ecomdownloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.comdownloads.morpheus.com/rotation\x0a")))))
(check-sat)
