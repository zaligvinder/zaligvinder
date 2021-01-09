(declare-const X String)
; actualnames\.com\s+fast-look\x2Ecomwww\x2Emaxifiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "actualnames.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fast-look.comwww.maxifiles.com\x0a")))))
; /\/[a-zA-Z0-9]{32}\.jar/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a"))))
(check-sat)
