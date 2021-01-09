(declare-const X String)
; Subject\x3A\.bmpfromemail=couponbar\.coupons\.comToolbarxml\.alexa\.com
(assert (str.in.re X (str.to.re "Subject:.bmpfromemail=couponbar.coupons.comToolbarxml.alexa.com\x0a")))
; ^([1-9][0-9]?|100)%$
(assert (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to.re "100")) (str.to.re "%\x0a"))))
; /\/$/U
(assert (str.in.re X (str.to.re "///U\x0a")))
(check-sat)
