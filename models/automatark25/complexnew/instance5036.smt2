(declare-const X String)
; \.icosearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (not (str.in.re X (str.to.re ".icosearch.conduit.com<logs@logs.com>\x0a"))))
; [0-9]{3}P[A-Z][0-9]{7}[0-9X]
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "P") (re.range "A" "Z") ((_ re.loop 7 7) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "X")) (str.to.re "\x0a"))))
(check-sat)
