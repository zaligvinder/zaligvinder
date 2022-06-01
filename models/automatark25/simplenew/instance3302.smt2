(declare-const X String)
; sponsor2\.ucmore\.com\s+informationHost\u{3A}\u{2F}ezsb
(assert (not (str.in_re X (re.++ (str.to_re "sponsor2.ucmore.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "informationHost:/ezsb\u{a}")))))
(check-sat)
