(declare-const X String)
; max-\s+\x2Fbar_pl\x2Ffav\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "max-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/bar_pl/fav.fcgi\x0a")))))
(check-sat)
