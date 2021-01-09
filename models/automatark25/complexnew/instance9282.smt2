(declare-const X String)
; for mobile:^[0][1-9]{1}[0-9]{9}$
(assert (str.in.re X (re.++ (str.to.re "for mobile:0") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(19|20)\d\d[-/.]([1-9]|0[1-9]|1[012])[- /.]([1-9]|0[1-9]|[12][0-9]|3[01])$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "19") (str.to.re "20")) (re.range "0" "9") (re.range "0" "9") (re.union (str.to.re "-") (str.to.re "/") (str.to.re ".")) (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "/") (str.to.re ".")) (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x0a")))))
; Subject\x3A\.bmpfromemail=couponbar\.coupons\.comToolbarxml\.alexa\.com
(assert (not (str.in.re X (str.to.re "Subject:.bmpfromemail=couponbar.coupons.comToolbarxml.alexa.com\x0a"))))
; passcorrect\x3B\d+AcmeSubject\x3Aready\.\r\nby\x2Fcbn\x2Fnode=
(assert (not (str.in.re X (re.++ (str.to.re "passcorrect;") (re.+ (re.range "0" "9")) (str.to.re "AcmeSubject:ready.\x0d\x0aby/cbn/node=\x0a")))))
(check-sat)
