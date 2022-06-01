(declare-const X String)
; Subject\u{3A}\.bmpfromemail=couponbar\.coupons\.comToolbarxml\.alexa\.com
(assert (str.in_re X (str.to_re "Subject:.bmpfromemail=couponbar.coupons.comToolbarxml.alexa.com\u{a}")))
; ^([1-9][0-9]?|100)%$
(assert (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") (re.opt (re.range "0" "9"))) (str.to_re "100")) (str.to_re "%\u{a}"))))
; /\/$/U
(assert (str.in_re X (str.to_re "///U\u{a}")))
(check-sat)
