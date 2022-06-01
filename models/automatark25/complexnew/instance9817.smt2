(declare-const X String)
; /filename=[^\n]*\u{2e}xpm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xpm/i\u{a}"))))
; sidesearch\.dropspam\.com\s+Strip-Player
(assert (str.in_re X (re.++ (str.to_re "sidesearch.dropspam.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Strip-Player\u{1b}\u{a}"))))
; Subject\u{3A}\.bmpfromemail=couponbar\.coupons\.comToolbarxml\.alexa\.com
(assert (not (str.in_re X (str.to_re "Subject:.bmpfromemail=couponbar.coupons.comToolbarxml.alexa.com\u{a}"))))
(check-sat)
