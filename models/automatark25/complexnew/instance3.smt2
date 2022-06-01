(declare-const X String)
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\u{3A}Host\u{3a}HTTPwww
(assert (str.in_re X (re.++ (str.to_re ".bmp") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "couponbar.coupons.com") (re.* re.allchar) (str.to_re "Host:Host:HTTPwww\u{a}"))))
; User-Agent\u{3a}User-Agent\u{3A}
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:\u{a}")))
(check-sat)
