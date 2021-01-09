(declare-const X String)
; PASSW=\w+www2\x2einstantbuzz\x2ecom\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "PASSW=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www2.instantbuzz.com/bar_pl/chk_bar.fcgi\x0a")))))
(check-sat)
