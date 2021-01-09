(declare-const X String)
; ^(.*)
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a"))))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eye") (re.* re.allchar) (str.to.re "http://supremetoolbar\x0a"))))
; ^[A-Z]$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (str.to.re "\x0a")))))
; Host\x3A\s+www\x2Eyoogee\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.yoogee.com\x13\x0a"))))
(check-sat)
