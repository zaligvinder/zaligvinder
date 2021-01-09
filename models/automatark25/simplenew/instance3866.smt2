(declare-const X String)
; X-OSSproxy\x3a\w+\+Version\+\s+fast-look\x2Ecomwww\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "X-OSSproxy:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "+Version+") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fast-look.comwww.maxifiles.com\x0a"))))
(check-sat)
