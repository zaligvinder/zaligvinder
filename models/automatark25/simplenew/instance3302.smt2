(declare-const X String)
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (not (str.in.re X (re.++ (str.to.re "sponsor2.ucmore.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:/ezsb\x0a")))))
(check-sat)
