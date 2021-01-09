(declare-const X String)
; /filename=[^\n]*\x2expm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xpm/i\x0a"))))
; sidesearch\.dropspam\.com\s+Strip-Player
(assert (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b\x0a"))))
; Subject\x3A\.bmpfromemail=couponbar\.coupons\.comToolbarxml\.alexa\.com
(assert (not (str.in.re X (str.to.re "Subject:.bmpfromemail=couponbar.coupons.comToolbarxml.alexa.com\x0a"))))
(check-sat)
