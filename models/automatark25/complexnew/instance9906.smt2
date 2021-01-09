(declare-const X String)
; /\x2epaq8o([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.paq8o") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; couponbar\.coupons\.comKeystrokesSubject\x3A
(assert (not (str.in.re X (str.to.re "couponbar.coupons.comKeystrokesSubject:\x0a"))))
; /\x2ertf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rtf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
