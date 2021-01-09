(declare-const X String)
; /\/i\.html\?[a-z0-9]+\=[a-zA-Z0-9]{25}/U
(assert (not (str.in.re X (re.++ (str.to.re "//i.html?") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 25 25) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; Ready\s+Eye.*http\x3A\x2F\x2Fsupremetoolbar
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Eye") (re.* re.allchar) (str.to.re "http://supremetoolbar\x0a"))))
(check-sat)
