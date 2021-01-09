(declare-const X String)
; TPSystem\s+TencentTraveler\s+www\x2eurlblaze\x2enetCurrentHost\x3AWindows
(assert (str.in.re X (re.++ (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TencentTraveler") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.urlblaze.netCurrentHost:Windows\x0a"))))
(check-sat)
