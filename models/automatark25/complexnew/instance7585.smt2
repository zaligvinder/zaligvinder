(declare-const X String)
; [\x00-\x1F\x7F]
(assert (not (str.in.re X (re.++ (re.union (re.range "\x00" "\x1f") (str.to.re "\x7f")) (str.to.re "\x0a")))))
; User-Agent\x3A\s+www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.myarmory.com\x0a")))))
(check-sat)
