(declare-const X String)
; /STOR\x20PIC\x5f\d{6}[a-z]{2}\x5f\x20\x5f\d{7}\x20\x2e\d{3}/i
(assert (str.in.re X (re.++ (str.to.re "/STOR PIC_") ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_ _") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re " .") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/i\x0a"))))
(check-sat)
