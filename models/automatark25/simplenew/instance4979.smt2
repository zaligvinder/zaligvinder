(declare-const X String)
; to\s+Host\x3AWeHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:WeHost:\x0a")))))
(check-sat)
