(declare-const X String)
; passcorrect\x3B\d+AcmeSubject\x3Aready\.\r\nby\x2Fcbn\x2Fnode=
(assert (str.in.re X (re.++ (str.to.re "passcorrect;") (re.+ (re.range "0" "9")) (str.to.re "AcmeSubject:ready.\x0d\x0aby/cbn/node=\x0a"))))
(check-sat)
