(declare-const X String)
; pass=Referer\x3ASurveillance
(assert (str.in.re X (str.to.re "pass=Referer:Surveillance\x13\x0a")))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:\x0a"))))
(check-sat)
