(declare-const X String)
; asdbiz\x2Ebiz\s+informationHost\x3A
(assert (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:\x0a"))))
(check-sat)
