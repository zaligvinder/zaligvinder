(declare-const X String)
; url=\swww\x2Ealfacleaner\x2Ecom\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2F
(assert (not (str.in.re X (re.++ (str.to.re "url=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to.re "Host:/products/spyblocs/\x13\x0a")))))
(check-sat)
